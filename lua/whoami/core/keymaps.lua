local utils = require("whoami.utils")
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Never use arrow keys :p
keymap.set({ "n", "i", "v" }, "<up>", "<nop>")
keymap.set({ "n", "i", "v" }, "<down>", "<nop>")
keymap.set({ "n", "i", "v" }, "<left>", "<nop>")
keymap.set({ "n", "i", "v" }, "<right>", "<nop>")

-- better up/down
keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move Lines
keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Add undo break-points
keymap.set("i", ",", ",<c-g>u")
keymap.set("i", ".", ".<c-g>u")
keymap.set("i", ";", ";<c-g>u")

-- better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- commenting
keymap.set("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
keymap.set("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- Delete word
keymap.set("n", "dw", "bde")

-- Increment/Decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Quickfix navigation
keymap.set("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
keymap.set("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-- Leave insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Clear search with <esc>
keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- Save current file
keymap.set({ "i", "n", "x", "v" }, "<C-s>", "<cmd>w<CR><ESC>", { desc = "Save file" })

-- buffers
do
	keymap.set("n", "[b", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
	keymap.set("n", "]b", "<cmd>bnext<CR>", { desc = "Next buffer" })
	keymap.set("n", "<leader>bx", "<cmd>bdelete<CR>", { desc = "Close current buffer" })
	keymap.set("n", "<leader>bn", "<cmd>enew<CR>", { desc = "Create new buffer" })
end

do
	keymap.set("n", "<leader>qq", "<cmd>qall!<CR>", { desc = "Quit from Neovim" })
	keymap.set("n", "<leader>qw", "<cmd>:wqall!<CR>", { desc = "Save files and quit" })
end

keymap.set("n", "<leader>p", "<cmd>Lazy<CR>", { desc = "Plugin Manager" })

keymap.set("n", "<leader><space>", "za", { desc = "Toggle fold" })

keymap.set("n", "<leader>r", function()
	require("lualine").hide({ place = { "statusline", "tabline", "winbar" }, unhide = false })
	vim.cmd("Lazy reload lualine.nvim")
	if utils.appearance() == "dark" then
		vim.cmd("Lazy reload tokyonight.nvim")
	else
		vim.cmd("Lazy reload catppuccin")
	end
end, { desc = "Reload theme options" })

-- window management
do
	keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
	keymap.set("n", "<leader>ss", "<C-w>s", { desc = "Split window horizontally" })
	keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
	-- keymap.set('n', '<leader>sm', '<C-w>_', { desc = 'Maximize current split' }) -- Vim-Maximizer already done that
	keymap.set("n", "<leader>sk", "0<C-w>-", { desc = "Decrease window hight" })
	keymap.set("n", "<leader>sj", "0<C-w>+", { desc = "Increase window hight" })
	keymap.set("n", "<leader>sl", "0<C-w>>", { desc = "Increase window width" })
	keymap.set("n", "<leader>sh", "0<C-w><", { desc = "Decrease window width" })
	keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

	for _, key in ipairs({ "h", "j", "k", "l" }) do
		keymap.set("n", string.format("<C-%s>", key), "<C-w>" .. key, { desc = "Jump around splits" })
	end
end

-- Tab management
do
	keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
	keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
	keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
	keymap.set("n", "<leader>to", "<cmd>tabonly<CR>", { desc = "Close other tabs" })
	keymap.set("n", "<leader>tl", "<cmd>tablast<CR>", { desc = "Goto last tab" })
	keymap.set("n", "<TAB>", "<cmd>tabn<CR>", { desc = "Goto next tab" })
	keymap.set("n", "<S-TAB>", "<cmd>tabp<CR>", { desc = "Goto previous tab" })
end

-- diagnostic
do
	local diagnostic_goto = function(next, severity)
		local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
		severity = severity and vim.diagnostic.severity[severity] or nil
		return function()
			go({ severity = severity })
		end
	end
	keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
	keymap.set("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
	keymap.set("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
	keymap.set("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
	keymap.set("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
	keymap.set("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
	keymap.set("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })
end
