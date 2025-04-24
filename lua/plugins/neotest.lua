return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
         "orjangj/neotest-ctest",
        -- "alfaix/neotest-gtest",
        "nvim-neotest/neotest-python",
        "lawrence-laz/neotest-zig",
        "rouge8/neotest-rust",
    },
    keys         = {
        { "<leader>tc", function() require('neotest').run.run({suite=true}) end, "Neotest" },
        { "<leader>tr", function() require('neotest').run.run() end, "Neotest" },
        { "<leader>ts", function() require('neotest').summary.toggle() end,            "Neotest summary" },
    },
    config       = function()
        local neotest = require("neotest")
        neotest.setup({
            adapters = {
                require("neotest-ctest").setup({}),
                require("neotest-python")({ python = ".venv/bin/python", runner = "pytest" }),
                require("neotest-rust"),
                require("neotest-zig"),
            }
        }) end,
}
