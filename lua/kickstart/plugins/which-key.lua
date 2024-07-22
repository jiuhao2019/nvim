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
	{ -- Useful plugin to show you pending keybinds.
		"folke/which-key.nvim",
		event = "VimEnter", -- Sets the loading event to 'VimEnter'
		config = function() -- This is the function that runs, AFTER loading
			require("which-key").setup()

			-- Document existing key chains
			require("which-key").add({
				{ "<leader>f", group = "File" },
				{ "<leader>fr", "<cmd>lua require('fzf-lua').oldfiles()<cr>", desc = "Recent" },
				{ "<leader>ff", "<cmd>lua require('fzf-lua').files()<cr>", desc = "Files" },
				{ "<leader>fx", "<esc>:wqa<cr>", desc = "Quit" },
				{ "<leader>fs", "<esc>:w<cr>", desc = "Save" },
				{
					"<leader>f1",
					"<esc>:e ~/.config/nvim/lua/kickstart/plugins/which-key.lua<cr>",
					desc = "Nvim config",
				},
				{
					"<leader>f2",
					"<esc>:e ~/.config/wezterm/font.lua<cr>",
					desc = "Wezterm config",
				},
				{
					"<leader>f3",
					"<esc>:e ~/.config/i3/config<cr>",
					desc = "i3wm config",
				},

				{ "<leader>s", group = "Search" },
				{ "<leader>se", "<cmd>HopChar1MW<cr>", desc = "Easymotion" },

				{ "<leader>d", group = "Diff" },
				{ "<leader>dt", "<cmd>diffthis<cr>", desc = "Diff this" },
				{ "<leader>dT", "<cmd>diffoff<cr>", desc = "Diff off" },
				{ "<leader>k", "<cmd>Interestingwords --toggle<cr>", desc = "Highlight" },
				{ "<leader>K", "<cmd>Interestingwords --remove_all<cr>", desc = "Unhighlignt" },
				{ "<leader>t", "<cmd>TagbarToggle<cr>", desc = "Tagbar" },
				{ "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undotree" },

				{ "<leader>l", group = "Lazy/List" },
				{ "<leader>lp", "<cmd>Lazy<cr>", desc = "Lazy plugin manager" },
				{ "<leader>lb", "<cmd>lua require('fzf-lua').buffers()<cr>", desc = "Buffer" },
			})
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
