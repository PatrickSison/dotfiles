return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local ts = require("telescope")

		ts.setup({
			pickers = {
				find_files = {
					hidden = true,
				},
			},
		})
	end,
}
