-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
wk.add({
  {
    -- Nested mappings are allowed and can be added in any order
    -- Most attributes can be inherited or overridden on any level
    -- There's no limit to the depth of nesting
    mode = { "n", "v" }, -- NORMAL and VISUAL mode
    { "<leader>se", "<cmd>HopChar1MW<cr>", desc = "easymotion" },
    { "<leader>bt", "<cmd>diffthis<cr>", desc = "diffthis" },
    { "<leader>bT", "<cmd>diffoff<cr>", desc = "diffoff" },
    { "<leader>ct", "<cmd>TagbarToggle<CR>", desc = "tagbar toggle" },
    { "<leader>cu", "<esc>:UndotreeToggle<CR>", desc = "undotree toggle" },
  },
})
