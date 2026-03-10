vim.opt.guicursor = "n-v-i-c:block-Cursor"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = true
vim.o.backupext = ".bak"
vim.o.writebackup = true
vim.opt.backupdir = os.getenv("HOME") .. "/.nvim/backup"
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.clipboard = 'unnamedplus'

vim.opt.inccommand = 'split'

vim.opt.cursorline = false;

vim.o.termguicolors = true

vim.opt.spelllang='en_us'
vim.opt.spell = true

vim.diagnostic.config({
	float = {
		focusable = false,
		style = "minimal",
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})

