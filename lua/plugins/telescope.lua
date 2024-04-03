return { {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    -- or                              , branch = '0.1.x',
    event = "BufReadPost",
    dependencies = { 'nvim-lua/plenary.nvim', },
    keys = {
        { "<leader>ff", function() require('telescope.builtin').find_files() end,                       "find files" },
        { "<leader>fg", function() require('telescope.builtin').live_grep() end,                        "live grep" },
        { "<leader>fh", function() require('telescope.builtin').help_tags() end,                        "help tags" },

        { "<leader>fr", function() require('telescope.builtin').lsp_references() end,                   "lsp references" },
        { "<leader>fd", function() require('telescope.builtin').lsp_definitions() end,                  "lsp definitions" },
        { "<leader>fi", function() require('telescope.builtin').lsp_implementations() end,              "lsp implementations" },
        { "<leader>ft", function() require('telescope.builtin').treesitter() end,                       "treesitter" },
        { "<leader>fs", function() require('telescope.builtin').grep_string() end,                      "grep string" },

        { "<leader>fb", function() require('telescope.builtin').git_branches() end,                     "git branches" },
        { "<leader>fq", function() require('telescope.builtin').quickfix() end,                         "quickfix" },

        { "<leader>gt", function() require('telescope.builtin').tags() end,                             "go to ctags" },
        { "<leader>rt", function() vim.cmd [[!ctags -f .tags --languages=all --exclude=.git -R .]] end, "refresh ctags" },
    },
},
    {
        "debugloop/telescope-undo.nvim",
        event = "BufReadPost",
        dependencies = { -- note how they're inverted to above example
            {
                "nvim-telescope/telescope.nvim",
                dependencies = { "nvim-lua/plenary.nvim" },
            },
        },
        keys = {
            { -- lazy style key map
                "<leader>u",
                "<cmd>Telescope undo<cr>",
                desc = "undo history",
            },
        },
        opts = {
            -- don't use `defaults = { }` here, do this in the main telescope spec
            extensions = {
                undo = {
                    -- telescope-undo.nvim config, see below
                },
                -- no other extensions here, they can have their own spec too
            },
        },
        config = function(_, opts)
            -- Calling telescope's setup from multiple specs does not hurt, it will happily merge the
            -- configs for us. We won't use data, as everything is in it's own namespace (telescope
            -- defaults, as well as each extension).
            require("telescope").setup(opts)
            require("telescope").load_extension("undo")
        end,
    },
}
