local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>gt', builtin.tags, { desc = '[G]o to C[T]ags (telescope)', noremap = true })
function RTags()
    vim.cmd [[!ctags -f .tags --languages=all --exclude=.git -R .]]
end

vim.keymap.set("n", "<leader>rt", RTags)

vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_implementations, {})
vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})

vim.keymap.set('n', '<leader>fb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>fq', builtin.quickfix, {})
