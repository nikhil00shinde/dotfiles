require("marshmalon")
vim.opt.relativenumber = true
vim.opt.number = true
vim.api.nvim_set_hl(0, 'LineNr', { fg = "white"})
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.cursorline = true
vim.cmd [[highlight CursorLineNr cterm=bold ctermfg=Yellow guifg=Yellow]]
