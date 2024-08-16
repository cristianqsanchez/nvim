vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.scrolloff = 10

vim.opt.textwidth = 90
vim.opt.colorcolumn = "90"
vim.opt.signcolumn = "yes"

vim.opt.isfname:append("@-@")

vim.opt.inccommand = 'split'
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.highlight.on_yank()

vim.opt.updatetime = 50

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldtext = ""
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 1
vim.opt.foldnestmax = 4

-- netrw config
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
-- vim.g.netrw_keepdir = 0
vim.g.netrw_sort_sequence = [[[\/]$,*]]
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

-- undo config
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
