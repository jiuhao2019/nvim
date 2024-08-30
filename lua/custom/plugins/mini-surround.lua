-- return {
-- 	{
-- 		{
-- 			"echasnovski/mini.surround",
-- 			opts = {
-- 				mappings = {
-- 					add = ";;",
-- 					delete = ";d",
-- 					find = ";f",
-- 					find_left = ";F",
-- 					highlight = ";h",
-- 					replace = ";r",
-- 					update_n_lines = ";n",
-- 				},
-- 			},
-- 		},
-- 	},
-- }
return {
	"kylechui/nvim-surround",
	version = "*", -- Use for stability; omit to use `main` branch for the latest features
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({
			-- Configuration here, or leave empty to use defaults
		})
	end,
}
