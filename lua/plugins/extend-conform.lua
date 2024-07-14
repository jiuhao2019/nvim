return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ["typescript"] = { "prettier" },
        ["markdown"] = { "prettier" },
        ["c"] = { "astyle" },
        ["lua"] = { "stylua" },
      },
    },
  },
}
