return {
    "folke/todo-comments.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "folke/trouble.nvim",
        "nvim-telescope/telescope.nvim",
    },
    keys = {
        { "<leader>ftd", "<cmd>TodoTelescope<cr>" },
    },
    opts = {},
}
