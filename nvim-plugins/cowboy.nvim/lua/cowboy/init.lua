local M = {}
M.count = 15
M.keys = { "h", "j", "k", "l", "<Up>", "<Down>", "<Left>", "<Right>" }
M._stack = {}

local function configure_key(key)
	local count = M.count
	---@type table?
	local id
	local timer = assert(vim.uv.new_timer())
	return function()
		if vim.v.count == 0 then
			if count >= 10 then
				if not timer:is_active() then
					timer:start(1000, 1000, function()
						count = 0
						timer:stop()
					end)
					id = vim.notify(
						string.format("Hold it Cowboy %s! (%s)", vim.uv.os_getenv("USER"), key),
						vim.log.levels.WARN,
						{
							icon = "🤠",
							id = id,
							keep = function()
								return count >= 10
							end,
						}
					)
				else
					timer:again()
				end
			else
				count = count + 1
				return key
			end
		else
			return key
		end
	end
end

function M.push(maps, lhs)
	for _, value in pairs(maps) do
		if value.lhs == lhs then
			table.insert(M._stack, value)
			return value
		end
	end
end

function M.map_keys()
	local maps = vim.api.nvim_get_keymap("n")
	for _, key in ipairs(M.keys) do
		M.push(maps, key)
	end

	local map = vim.keymap.set
	for _, key in ipairs(M.keys) do
		map("n", key, configure_key(key), { silent = true, noremap = true, expr = true })
	end
end

function M.pop(lhs)
	local unmap = vim.keymap.del
	for i, backup in ipairs(M._stack) do
		if backup.lhs == lhs then
			unmap("n", lhs)
			return table.remove(M._stack, i)
		end
	end
end

function M.unmap_keys()
	local map = vim.keymap.set
	for _, key in ipairs(M.keys) do
		local backup = M.pop(key)
		if backup then
			map("n", backup.lhs, backup.rhs or backup.callback, {
				expr = backup.expr == 1 and true or nil,
				remap = backup.remap,
				callback = backup.callback,
				desc = backup.desc,
				silent = backup.silent,
				noremap = backup.noremap,
				script = backup.script,
				nowait = backup.nowait,
			})
		end
	end
end

function M.setup()
	local active = true
	local autocmd_id
	local map_callback = {
		[false] = M.map_keys,
		[true] = M.unmap_keys,
	}
	vim.keymap.set("n", "<leader>uu", function()
		map_callback[active]()
		active = not active
		vim.notify("Cowboy is " .. (active and "active" or "inactive"))
	end, { desc = "Toggle Cowboy" })

	autocmd_id = vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
		pattern = "*.*",
		callback = function()
			M.map_keys()
			vim.api.nvim_del_autocmd(autocmd_id)
		end,
	})
end

return M