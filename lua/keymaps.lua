-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<A-h>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<A-l>", ":vertical resize +1<CR>")
vim.keymap.set("n", "<A-j>", ":resize +1<CR>")
vim.keymap.set("n", "<A-k>", ":resize -1<CR>")

vim.keymap.set("n", "<A-1>", ":e ~/.config/nvim/lua/keymaps.lua<cr>")
vim.keymap.set("n", "<A-2>", ":e ~/.config/wezterm/font.lua<cr>")
vim.keymap.set("n", "<A-3>", ":e ~/.config/i3/config<cr>")
vim.keymap.set("n", "<A-4>", ":e ~/.emacs.d/init.el<cr>")

vim.keymap.set(
	"n",
	"<A-F>",
	"<cmd>lua require('conform').format({ async = true, lsp_fallback = true })<cr>")
vim.keymap.set("n", "<A-f>", "<cmd>lua require('fzf-lua').files()<cr>")

vim.keymap.set("n", "<A-r>", "<cmd>lua require('fzf-lua').oldfiles()<cr>")
vim.keymap.set("n", "<A-e>", "<cmd>HopChar1MW<cr>")
vim.keymap.set("n", "<A-s>", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", { desc = "search" })
vim.keymap.set("n", "<A-w>", "<cmd>Interestingwords --toggle<cr>", { desc = "color-word" })
vim.keymap.set("n", "<A-W>", "<cmd>Interestingwords --remove_all<cr>", { desc = "clear-all-color-word" })
vim.keymap.set("n", "<A-u>", "<cmd>UndotreeToggle<cr>", { desc = "undotree" })
vim.keymap.set("n", "<A-c>", "<cmd>call UpdateCtags()<cr>", { desc = "ctags update" })
vim.keymap.set("n", "<A-n>", "<cmd>Neotree reveal<cr>", { desc = "neotree" })
vim.keymap.set("n", "<A-i>", "<cmd>TagbarToggle()<cr>", { desc = "imenu" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
