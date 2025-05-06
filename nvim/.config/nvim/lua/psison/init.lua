require("psison.keybinds")
vim.wo.number = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.lsp.inlay_hint.enable()
vim.api.nvim_set_hl(0, "Normal", { bg = nil })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = nil })
