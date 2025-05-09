return { -- Mason for managing external tools
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = true,
	}, -- Mason-lspconfig for LSP integration
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			local masonlsp = require("mason-lspconfig")
			masonlsp.setup({
				ensure_installed = {
					"ts_ls",
					"lua_ls",
					"pyright",
					"eslint",
					"cssls",
					"jsonls",
					"ast_grep",
					"rust_analyzer",
					"gopls",
				},
			})
		end,
	},
}
