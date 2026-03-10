return {
    "nvim-neotest/neotest",
    dependencies = {
        "marilari88/neotest-vitest",
    },
    opts = {
        adapters = {
            ["neotest-vitest"] = {},
        },
    },
    config = function()
        require("neotest").setup({
            adapters = {
                require("neotest-vitest") {
                    filter_dir = function(name, rel_path, root)
                        return name ~= "node_modules"
                    end,
                },
            }
        })


        vim.keymap.set('n', '<leader>dc',"<cmd>lua require('neotest').run.run({ vitestCommand = 'vitest --watch' })<cr>", {})
        vim.keymap.set('n', '<leader>dc',"<cmd>lua require('neotest').run.run({ vim.fn.expand('%'), vitestCommand = 'vitest --watch' })<cr>",{})
    end,
}
