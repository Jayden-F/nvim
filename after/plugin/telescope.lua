local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})

vim.keymap.set('n', '<leader>gt', builtin.tags,            { desc = '[G]o to C[T]ags (telescope)', noremap = true })

function RTags()
    vim.cmd [[!ctags -f .tags --languages=all --exclude=.git -R .]]
end

vim.keymap.set("n", "<leader>rt", RTags)
