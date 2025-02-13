-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    use {
        'junegunn/fzf.vim',
        requires = { 'junegunn/fzf', run = ':call fzf#install()' }
    }

    use { "ibhagwan/fzf-lua" }

    use 'navarasu/onedark.nvim'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use('nvim-treesitter/playground')

    use('mbbill/undotree')

    use('tpope/vim-fugitive')

    use "lukas-reineke/indent-blankline.nvim"

    use "theprimeagen/harpoon"

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'L3MON4D3/LuaSnip'},
            {'j-hui/fidget.nvim',}
        }
    }

    use({
        "erichdongubler/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    })

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'theprimeagen/vim-be-good'
end)

