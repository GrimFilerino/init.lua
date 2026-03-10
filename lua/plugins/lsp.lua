return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            
            vim.lsp.config('ts_ls', {
                capabilities = capabilities,
            })

            vim.lsp.config('html', {
                capabilities = capabilities,
            })

            vim.lsp.config('lua_ls', {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        runtime = { version = "Lua 5.1" },
                        diagnostics = { globals = { "vim" } },
                    }
                }
            })

            vim.lsp.config('clangd', {
                capabilities = capabilities,
                on_attach = function(_, bufnr)
                    vim.bo[bufnr].tabstop = 8
                    vim.bo[bufnr].shiftwidth = 8
                end,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Code show what it does"})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Fix code miskates (like imports)"})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
        end,
    },
}
