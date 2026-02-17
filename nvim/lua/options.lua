vim.o.relativenumber = true
vim.o.number = true
vim.o.signcolumn = "no"
vim.o.wrap = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.swapfile = false
vim.o.clipboard = "unnamedplus"
vim.o.foldmethod = "expr"
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.mapleader = " "
vim.cmd("colorscheme tokyonight-night")

vim.g.tex_flavor='latex'
vim.g.vimtex_view_method='zathura'
vim.g.vimtex_quickfix_mode=0
vim.o.conceallevel=1
vim.g.tex_conceal='abdmg'
