-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")
local ss = require("scissors")
wk.add({
  {
    -- Nested mappings are allowed and can be added in any order
    -- Most attributes can be inherited or overridden on any level
    -- There's no limit to the depth of nesting
    {
      mode = { "n", "v" }, -- NORMAL and VISUAL mode
      { "<leader>se", "<cmd>HopChar1MW<cr>", desc = "Easymotion" },
      { "<leader>bt", "<cmd>diffthis<cr>", desc = "Diff This" },
      { "<leader>bT", "<cmd>diffoff<cr>", desc = "Diff Off" },
      { "<leader>bk", "<cmd>Interestingwords --toggle<cr>", desc = "Highlight Keyword" },
      { "<leader>bK", "<cmd>Interestingwords --remove_all<cr>", desc = "Unhighlignt Keyword" },
      { "<leader>ct", "<cmd>TagbarToggle<cr>", desc = "Tagbar Toggle" },
      { "<leader>cu", "<cmd>UndotreeToggle<cr>", desc = "Undotree Toggle" },
    },

    {
      mode = { "n" }, -- NORMAL and VISUAL mode
      {
        "<leader>ce",
        function()
          ss.editSnippet()
        end,
        desc = "Edit Snippet",
      },
    },

    {
      mode = { "n", "x" }, -- NORMAL and VISUAL mode
      -- when used in visual mode, prefills the selection as snippet body
      {
        "<leader>cn",
        function()
          ss.addNewSnippet()
        end,
        desc = "Add Snippet",
      },
    },
  },
})
