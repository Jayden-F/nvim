return {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    keys = {
        { "<leader>rf",  function() return require('refactoring').refactor('Extract Function') end,         mode = { 'n', 'x' }, expr = true },
        { "<leader>rff", function() return require('refactoring').refactor('Extract Function To File') end, mode = { 'n', 'x' }, expr = true },
        { "<leader>rv",  function() return require('refactoring').refactor('Extract Variable') end,         mode = { 'n', 'x' }, expr = true },
        { "<leader>rif", function() return require('refactoring').refactor('Inline Function') end,          mode = { 'n', 'x' }, expr = true },
        { "<leader>riv", function() return require('refactoring').refactor('Inline Variable') end,          mode = { 'n', 'x' }, expr = true },
        { "<leader>rb",  function() return require('refactoring').refactor('Extract Block') end,            mode = { 'n', 'x' }, expr = true },
        { "<leader>rbf", function() return require('refactoring').refactor('Extract Block To File') end,    mode = { 'n', 'x' }, expr = true },
        {
            "<leader>rpm",
            function() require('refactoring').debug.printf({ below = false }) end,
            mode = 'n'
        },
        { "<leader>rpv", function() require('refactoring').debug.print_var() end, mode = { 'x', 'n' } },
        { "<leader>rpc", function() require('refactoring').debug.cleanup({}) end, mode = 'n' },

    },
    opts = { show_success_message = true, }

}
