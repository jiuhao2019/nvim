-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
	{
		"folke/which-key.nvim",
		event = "VimEnter",
		config = function()
			require("which-key").setup()

			require("which-key").add({
				{ "<leader>e", group = "Edit config" },
				{
					"<leader>e1",
					"<esc>:e ~/.config/nvim/lua/kickstart/plugins/which-key.lua<cr>",
					desc = "Neovim",
				},
				{
					"<leader>e2",
					"<esc>:e ~/.config/wezterm/font.lua<cr>",
					desc = "Wezterm",
				},
				{
					"<leader>e3",
					"<esc>:e ~/.config/i3/config<cr>",
					desc = "i3wm",
				},
				{
					"<leader>e4",
					"<esc>:e ~/.emacs.d/init.el<cr>",
					desc = "Emacs",
				},
				{
					"<leader>F",
					"<cmd>lua require('conform').format({ async = true, lsp_fallback = true })<cr>", desc = "Format buffer",
				},
				{ "<leader>f", "<cmd>lua require('fzf-lua').files()<cr>", desc = "Files pwd" },
				{ "<leader>r", "<cmd>lua require('fzf-lua').oldfiles()<cr>", desc = "Recent files" },

				{ "<leader>h", "<cmd>HopChar1MW<cr>", desc = "Hop char" },
				{ "<leader>s", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", desc = "Grep pwd" },

				{ "<leader>k", "<cmd>Interestingwords --toggle<cr>", desc = "Color word" },
				{ "<leader>K", "<cmd>Interestingwords --remove_all<cr>", desc = "Clear all color" },

				{ "<leader>U", "<cmd>UndotreeToggle<cr>", desc = "Undotree" },
				{ "<leader>u", "<cmd>call UpdateCtags()<cr>", desc = "Update ctags" },

				{ "<leader>t", "<cmd>Neotree<cr>", desc = "Neotree" },
				{ "<leader>T", "<cmd>TagbarToggle()<cr>", desc = "Tagbar" },
			})
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
