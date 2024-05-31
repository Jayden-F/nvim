local telescope = require("telescope")
local telescope_builtin = require("telescope.builtin")

return { {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', },
    keys = {
        { "<leader>ff", function() telescope_builtin.find_files() end,                       "find files" },
        { "<leader>fg", function() telescope_builtin.live_grep() end,                        "live grep" },
        { "<leader>fh", function() telescope_builtin.help_tags() end,                        "help tags" },

        { "<leader>fr", function() telescope_builtin.lsp_references() end,                   "lsp references" },
        { "<leader>fd", function() telescope_builtin.lsp_definitions() end,                  "lsp definitions" },
        { "<leader>fi", function() telescope_builtin.lsp_implementations() end,              "lsp implementations" },
        { "<leader>ft", function() telescope_builtin.treesitter() end,                       "treesitter" },
        { "<leader>fs", function() telescope_builtin.grep_string() end,                      "grep string" },

        { "<leader>fb", function() telescope_builtin.git_branches() end,                     "git branches" },
        { "<leader>fq", function() telescope_builtin.quickfix() end,                         "quickfix" },

        { "<leader>gt", function() telescope_builtin.tags() end,                             "go to ctags" },
        { "<leader>rt", function() vim.cmd [[!ctags -f .tags --languages=all --exclude=.git -R .]] end, "refresh ctags" },
    },
},
    {
        "debugloop/telescope-undo.nvim",
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
            telescope.setup(opts)
            telescope.load_extension("undo")
        end,
    },
}
