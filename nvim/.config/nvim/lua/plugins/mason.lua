return { -- Mason for managing external tools
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	}, -- Mason-lspconfig for LSP integration
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			local masonlsp = require("mason-lspconfig")
			masonlsp.setup({
				ensure_installed = {
					"lua_ls",
					"pyright",
					"eslint",
					"cssls",
					"jsonls",
					"ast_grep",
				},
			})
		end,
	},
}
