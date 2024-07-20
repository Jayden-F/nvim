return {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    keys = {
        { "<leader>rf",  function() require('refactoring').refactor('Extract Function') end,         mode = 'x' },
        { "<leader>rff", function() require('refactoring').refactor('Extract Function To File') end, mode = 'x' },
        -- Extract function supports only visual mode
        { "<leader>rv",  function() require('refactoring').refactor('Extract Variable') end,         mode = 'x' },
        -- Extract variable supports only visual mode
        { "<leader>rif", function() require('refactoring').refactor('Inline Function') end,          mode = 'n' },
        -- Inline func supports only normal
        { "<leader>riv", function() require('refactoring').refactor('Inline Variable') end,          mode = { 'n', 'x' } },
        -- Inline var supports both normal and visual mode

        { "<leader>rb",  function() require('refactoring').refactor('Extract Block') end,            mode = 'n' },
        { "<leader>rbf", function() require('refactoring').refactor('Extract Block To File') end,    mode = 'n' },
        -- Extract block supports only normal mode
        {
            "<leader>rpm",
            function() require('refactoring').debug.printf({ below = false }) end,
            mode = 'n'
        },
        { "<leader>rpv", function() require('refactoring').debug.print_var() end, mode = { 'x', 'n' } },
        { "<leader>rpc", function() require('refactoring').debug.cleanup({}) end, mode = 'n' },

    },

    opts = {},

}
