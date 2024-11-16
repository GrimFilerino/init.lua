require('fzf-lua').setup({
    defaults = {
    },
    files = {
        file_icons = false
    },
})



vim.keymap.set('n', '<leader>df', require('fzf-lua').lsp_definitions, {});

vim.keymap.set('n', '<leader>ff', function ()
    require('fzf-lua').files({
        fd_opts = [[--color=never --type f --hidden --follow --exclude .git --exclude node_modules --exclude .angular --exclude lib --exclude bootstrap --exclude dist]],
        cwd_prompt_shorten_val=8,
    })
end, { desc = "Project Files" });

-- vim.keymap.set('n', '<leader>bf', require('fzf-lua').buffers, {})

vim.keymap.set('n', '<leader>gg', function()
    require('fzf-lua').git_files({
        fd_opts = [[--color=never --type f --hidden --follow --exclude dist]],
        cwd_prompt_shorten_val=8,
    })
end, { desc = "Git Files" });

vim.keymap.set('n', '<leader>ps', function()
	require('fzf-lua').live_grep({});
end);


vim.keymap.set('n', '<leader>gs', function()
	require('fzf-lua').live_grep({ cmd = "git grep --line-number --column --color=always" });
end);

