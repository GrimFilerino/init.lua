return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            direction = "float",
            persist_mode = true,
            float_opts = {
                border = "curved",
            },
        })

        local Terminal = require("toggleterm.terminal").Terminal

        -- Normal terminal
        vim.keymap.set('n', '<leader>tt', function()
            require("toggleterm").toggle(0)
        end, { desc = "Toggle Floating Terminal" })

        vim.keymap.set('t', '<leader>tt', function()
            require("toggleterm").toggle(0)
        end, { desc = "Toggle Floating Terminal" })

        -- Spotify terminal
        local spotify_term = Terminal:new({
            cmd = "spotify_player",
            hidden = true,
            direction = "float",
        })

        function _TOGGLE_SPOTIFY()
            spotify_term:toggle()
        end

        vim.keymap.set('n', '<leader>ts', _TOGGLE_SPOTIFY, { desc = "Toggle Spotify Player Terminal" })
        vim.keymap.set('t', '<leader>ts', _TOGGLE_SPOTIFY, { desc = "Toggle Spotify Player Terminal" })
    end,
}
