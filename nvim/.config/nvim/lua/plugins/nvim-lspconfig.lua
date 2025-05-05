return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	opts = {
		inlay_hints = {
			enabled = true,
		},
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({})
			end,
		})
	end,
}
