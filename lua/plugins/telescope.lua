return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Previous opend files' })
        vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Grep string' })

        vim.keymap.set('n', '<leader>df', builtin.lsp_definitions, {})
        vim.keymap.set('n', '<leader>lp', builtin.lsp_implementations, {})
        vim.keymap.set('n', '<leader>lr', builtin.lsp_references, {})

        vim.keymap.set('n', '<leader>gs', builtin.git_files, {})
    end
}
