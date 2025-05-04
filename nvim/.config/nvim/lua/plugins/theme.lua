return {
	"sainnhe/gruvbox-material",
	lazy = false, -- Load immediately to avoid color inconsistencies
	priority = 1000, -- Ensure it loads before other plugins
	config = function()
		-- Optional: Configure gruvbox-material settings before loading
		vim.g.gruvbox_material_background = "medium" -- Options: "hard", "medium", "soft"
		vim.g.gruvbox_material_foreground = "material" -- Options: "material", "mix", "original"
		vim.g.gruvbox_material_enable_italic = true -- Enable italics for certain highlights
		vim.g.gruvbox_material_better_performance = true -- Optimize performance

		-- Load the colorscheme
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
