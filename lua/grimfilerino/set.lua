vim.opt.guicursor = ""

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

vim.opt.colorcolumn = "100"
vim.opt.clipboard = 'unnamedplus'

vim.opt.inccommand = 'split'

vim.opt.cursorline = false;

vim.o.termguicolors = true

vim.cmd'colorscheme onedark'

vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*',
    callback = function()
        local file_dir = vim.fn.expand('%:p:h')       -- Get the directory of the file
        local backup_dir = vim.fn.expand('~') .. '/.nvim/backup' .. file_dir:sub(#vim.fn.expand('~') + 1) .. '/'
        vim.o.backupdir = backup_dir  -- Set backup directory to match project structure
    end,
})
