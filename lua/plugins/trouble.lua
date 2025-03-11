return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "Trouble"},
    keys = {
        { "<leader>tt", "<cmd>Trouble close<cr>",                                       "Trouble" },
        { "<leader>tw", "<cmd>Trouble diagnostics toggle focus=true follow=true<cr>",              "Trouble Workspace" },
        { "<leader>td", "<cmd>Trouble diagnostics toggle focus=true filter.buf=0 follow=true<cr>", "Trouble Document" },
        { "<leader>tq", "<cmd>Trouble qflist toggle focus=true follow=true<cr>",                   "Trouble Quickfix" },
        { "<leader>tl", "<cmd>Trouble loclist toggle focus=true follow=true<cr>",                  "Trouble Loclist" },
        { "gr",         "<cmd>Trouble lsp_references toggle focus=true follow=true<cr>",           "Trouble References" },
        { "gd",         "<cmd>Trouble lsp_definitions toggle focus=true follow=true<cr>",          "Trouble Definitions" },
    },
    opts = {
    },
}
