return {
    "erichdongubler/lsp_lines.nvim",
    config = function()
        require("lsp_lines").setup()
        vim.keymap.set("n","<Leader>xx", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
    end,
}
