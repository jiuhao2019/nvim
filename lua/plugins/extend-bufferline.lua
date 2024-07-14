return {
  "akinsho/bufferline.nvim",
  keys = {
    { "<leader><CR>", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Close Unpinned Buffers" },
    { "<leader><delete>", LazyVim.ui.bufremove, desc = "Close current buffer" },
  },
}
