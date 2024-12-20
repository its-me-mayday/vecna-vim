require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = false,
	styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
		comments = { "italic" }, -- Change the style of comments
	},
})

require("catppuccin").setup({
	custom_highlights = function(colors)
		return {
			Comment = { fg = colors.flamingo },
			TabLineSel = { bg = colors.pink },
			CmpBorder = { fg = colors.surface2 },
			Pmenu = { bg = colors.none },
		}
	end,
})

vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd.colorscheme("catppuccin-mocha")
