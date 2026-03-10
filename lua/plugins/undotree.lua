return {
    "mbbill/undotree",
    config = function()
        vim.g.undotree_DiffCommand = "diff"
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
    end
}
