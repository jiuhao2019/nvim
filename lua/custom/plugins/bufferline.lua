return {
	"akinsho/bufferline.nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<S-Right>",
			":bnex<cr>",
			{ desc = "Next buffer" },
		},
		{
			"<S-Left>",
			":bprevious<cr>",
			{ desc = "Prev buffer" },
		},
		{ "<leader><CR>", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Close Unpinned Buffers" },
		{ "<leader><delete>", "<Cmd>bdelete<CR>", desc = "Close current buffer" },
	},
	config = function()
		require("bufferline").setup({
			options = {
				-- 左侧让出 nvim-tree 的位置
				offsets = {
					{
						filetype = "neo-tree",
						text = "▤",
						highlight = "Directory",
						text_align = "center",
					},
				},
				-- 动态显示关闭键
				hover = {
					enabled = true,
					delay = 200,
					reveal = { "close" },
				},
				always_show_bufferline = true,
			},
		})
	end,
}
