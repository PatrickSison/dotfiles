-- my keybinds
-- prevents using arrows
vim.keymap.set("n", "<left>", '<cmd> echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd> echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd> echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd> echo "Use j to move!!"<CR>')

-- default from telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- default from conform
vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })
