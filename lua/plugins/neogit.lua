return {
    {
        "NeogitOrg/neogit",
        branch = "master",
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration
            -- Only one of these is needed, not both.
            "nvim-telescope/telescope.nvim", -- optional
        },
        keys = { { "<leader>gs", function() require('neogit').open() end, "Neogit" } },
        opts = { graph_style = "unicode", }
    },
    {
        {
            "lewis6991/gitsigns.nvim",
            event = "VeryLazy",
            opts = {
                signs = {
                    add = { text = "▎" },
                    change = { text = "▎" },
                    delete = { text = "" },
                    topdelete = { text = "" },
                    changedelete = { text = "▎" },
                    untracked = { text = "▎" },
                },
                signs_staged = {
                    add = { text = "▎" },
                    change = { text = "▎" },
                    delete = { text = "" },
                    topdelete = { text = "" },
                    changedelete = { text = "▎" },
                },
                on_attach = function(bufnr)
                    local gitsigns = require('gitsigns')

                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                    end

                    -- Actions
                    map('n', '<leader>hs', gitsigns.stage_hunk)
                    map('n', '<leader>hS', gitsigns.stage_buffer)

                    map('n', '<leader>hr', gitsigns.reset_hunk)
                    map('n', '<leader>hR', gitsigns.reset_buffer)
                    map('n', '<leader>hu', gitsigns.undo_stage_hunk)

                    map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
                    map('n', '<leader>dt', gitsigns.diffthis)
                    map('n', '<leader>hd', gitsigns.toggle_deleted)
                end,
            },
        }
    },
}
