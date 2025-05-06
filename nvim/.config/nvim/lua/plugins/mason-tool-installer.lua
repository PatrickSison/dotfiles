return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"lua-language-server",
					"stylua", -- Add StyLua here
					"cssls",
					"eslint_d",
					"prettier",
					"shellcheck",
				},
				auto_update = true,
				run_on_start = true,
			})
		end,
	},
}
