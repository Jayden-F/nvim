return {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
    keys = {
        { "<leader>rf",  function() return require('refactoring').refactor('Extract Function') end,         mode = 'x',          expr = true },
        { "<leader>rff", function() return require('refactoring').refactor('Extract Function To File') end, mode = 'x',          expr = true },
        -- Extract function supports only visual mode
        { "<leader>rv",  function() return require('refactoring').refactor('Extract Variable') end,         mode = 'x',          expr = true },
        -- Extract variable supports only visual mode
        { "<leader>rif", function() return require('refactoring').refactor('Inline Function') end,          mode = 'n',          expr = true },
        -- Inline func supports only normal
        { "<leader>riv", function() return require('refactoring').refactor('Inline Variable') end,          mode = { 'n', 'x' }, expr = true },
        -- Inline var supports both normal and visual mode

        { "<leader>rb",  function() return require('refactoring').refactor('Extract Block') end,            mode = 'n',          expr = true },
        { "<leader>rbf", function() return require('refactoring').refactor('Extract Block To File') end,    mode = 'n',          expr = true },
        -- Extract block supports only normal mode
        {
            "<leader>rpm",
            function() require('refactoring').debug.printf({ below = false }) end,
            mode = 'n'
        },
        { "<leader>rpv", function() require('refactoring').debug.print_var() end, mode = { 'x', 'n' } },
        { "<leader>rpc", function() require('refactoring').debug.cleanup({}) end, mode = 'n' },

    },
    config = function()
        require("refactoring").setup(
            { show_success_message = true, }
        )
    end,
}
