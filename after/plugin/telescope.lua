local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pgf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gt', builtin.tags,            { desc = '[G]o to C[T]ags (telescope)', noremap = true })

function RTags()
    vim.cmd [[!ctags -f .tags --languages=all --exclude=.git -R .]]
end

vim.keymap.set("n", "<leader>rt", RTags)
