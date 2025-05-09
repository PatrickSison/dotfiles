require("psison.keybinds")

-- shows line number and signs (for errors and messages)
vim.wo.number = true
vim.opt.signcolumn = "yes"

-- tabs visually appear to be 4 spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- show whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = ".", nbsp = "~" }

-- searches ignore case unless includes 1 or more capital letters
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- highlights cursor line
vim.opt.cursorline = true

-- lines to show above/below cursor
vim.opt.scrolloff = 8

-- misc
vim.lsp.inlay_hint.enable()

-- style
vim.api.nvim_set_hl(0, "Normal", { bg = nil })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil })
