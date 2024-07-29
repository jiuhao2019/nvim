return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		-- setup must be called before loading
		vim.cmd.colorscheme("tokyonight-day")
	end,
}
-- colorscheme tokyonight
--
-- " There are also colorschemes for the different styles.
-- colorscheme tokyonight-night
-- colorscheme tokyonight-storm
-- colorscheme tokyonight-day
-- colorscheme tokyonight-moon
