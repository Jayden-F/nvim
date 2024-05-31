return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "alfaix/neotest-gtest",
        "nvim-neotest/neotest-python"
    },
    keys         = { { "<leader>tc", function() require('neotest').run.run() end, "Neotest" } },
    config       = function()
        local neotest = require("neotest")
        neotest.setup({
            adapters = {
                require("neotest-gtest").setup({
                }),
                require("neotest-python"),
            }
        })
    end,
}
