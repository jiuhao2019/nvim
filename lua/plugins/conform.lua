return {
	"stevearc/conform.nvim", -- Autoformat
	lazy = false,
	opts = {
		notify_on_error = false,
		format_on_save = function(bufnr)
			-- Disable "format_on_save lsp_fallback" for languages that don't
			-- have a well standardized coding style. You can add additional
			-- languages here or re-enable it for the disabled ones.
			local disable_filetypes = { lua = true } -- 防止还没完全写完全配置就格式化导致格式很乱
			return {
				timeout_ms = 500,
				lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
			}
		end,
		formatters_by_ft = {
			["lua"] = { "stylua" },
			["typescript"] = { "prettier" },
			["markdown"] = { "prettier" },
			["c"] = { "astyle" },
		},
	},
}
