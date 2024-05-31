return {
    "NeogitOrg/neogit",
    branch = "master",
    dependencies = {
        "nvim-lua/plenary.nvim",  -- required
        "sindrets/diffview.nvim", -- optional - Diff integration

        -- Only one of these is needed, not both.
        "nvim-telescope/telescope.nvim", -- optional
    },
    keys = { { "<leader>gs", function() require('neogit').open() end, "Neogit" } },
    opts = { graph_style = "unicode", }
}
