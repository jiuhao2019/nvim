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
				{ "<leader>s", group = "Search" },
				{ "<leader>se", "<cmd>HopChar1MW<cr>", desc = "Easymotion" },
				{ "<leader>d", group = "Diff" },
				{ "<leader>dt", "<cmd>diffthis<cr>", desc = "Diff This" },
				{ "<leader>dT", "<cmd>diffoff<cr>", desc = "Diff Off" },
				{ "<leader>k", "<cmd>Interestingwords --toggle<cr>", desc = "Highlight Keyword" },
				{ "<leader>K", "<cmd>Interestingwords --remove_all<cr>", desc = "Unhighlignt Keyword" },
				{ "<leader>t", "<cmd>TagbarToggle<cr>", desc = "Tagbar Toggle" },
				{ "<leader>u", "<cmd>UndotreeToggle<cr>", desc = "Undotree Toggle" },
			})
		end,
	},
}
-- vim: ts=2 sts=2 sw=2 et
