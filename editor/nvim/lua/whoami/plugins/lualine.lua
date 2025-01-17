local utils = require("utils")
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		local colors = {
			blue = "#65D1FF",
			green = "#3EFFDC",
			violet = "#FF61EF",
			yellow = "#FFDA7B",
			red = "#FF4A4A",
			fg = "#c3ccdc",
			bg = "#112638",
			inactive_bg = "#2c3043",
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
			},
		}

		vim.api.nvim_create_autocmd("OptionSet", {
			pattern = "background",
			callback = function()
				local is_tokyo = (vim.g.colors_name or ""):find("^tokyonight")
				local is_dark = vim.opt.background._value ~= "light"
				require("lualine").setup({
					options = {
						theme = (is_tokyo and is_dark) and my_lualine_theme or "auto",
					},
				})
			end,
		})

		vim.api.nvim_create_autocmd("Colorscheme", {
			callback = function()
				local colorscheme = vim.g.colors_name or ""
				require("lualine").setup({
					options = {
						theme = (colorscheme:find("^catppuccin")) and "auto" or my_lualine_theme,
					},
				})
			end,
		})

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = utils.appearance() == "dark" and my_lualine_theme or "catppuccin-latte",
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
			extensions = {
				"nvim-tree",
				"quickfix",
			},
		})
	end,
}
