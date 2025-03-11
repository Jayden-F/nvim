
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        bigfile = { enabled = true },
        input = { enabled = true },
        picker = { enabled = true },
        notifier = { enabled = true, top_down = false, style = "minimal" },
        notify = { enabled = true },
        quickfile = { enabled = true },
        rename = { enabled = true },
    },
    keys = {
        { "<leader>ff", function() Snacks.picker.files() end,      desc = "Find Files" },
        { "<leader>fg", function() Snacks.picker.grep() end,       desc = "Grep" },
        { "<leader>fh", function() Snacks.picker.help() end,       desc = "Help Pages" },
        { "<leader>ft", function() Snacks.picker.treesitter() end, desc = "Tree Sitter" },
        { "<leader>fw", function() Snacks.picker.grep_word() end,  desc = "Visual selection or word", mode = { "n", "x" } },
        { "<leader>fq", function() Snacks.picker.qflist() end,     desc = "Quickfix List" },
        { "<leader>fu", function() Snacks.picker.undo() end,       desc = "Undo History" },
        { "<leader>gb", function() Snacks.gitbrowse() end,         desc = "Git Browse",               mode = { "n", "v" } },
    }
}
