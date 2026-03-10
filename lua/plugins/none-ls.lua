return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.prettier.with({
                    filetypes = { "html", "css", "scss", "typescript", "javascript" }
                })
            },
        })
        vim.keymap.set('n', '<leader>zf', vim.lsp.buf.format, {})
    end
}
