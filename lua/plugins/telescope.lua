return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', },
    keys = {
        { "<leader>ff",  function() require('telescope.builtin').find_files() end,                                       "find files" },
        { "<leader>fg",  function() require('telescope.builtin').live_grep() end,                                        "live grep" },
        { "<leader>fh",  function() require('telescope.builtin').help_tags() end,                                        "help tags" },

        { "<leader>fr",  function() require('telescope.builtin').lsp_references() end,                                   "lsp references" },
        { "<leader>fd",  function() require('telescope.builtin').lsp_definitions() end,                                  "lsp definitions" },
        { "<leader>fi",  function() require('telescope.builtin').lsp_implementations() end,                              "lsp implementations" },
        { "<leader>ft",  function() require('telescope.builtin').treesitter() end,                                       "treesitter" },
        { "<leader>fiw", function() require('telescope.builtin').grep_string() end,                                      "grep string" },
        { "<leader>fiW", function() require('telescope.builtin').grep_string({ search = vim.fn.expand("<cWORD>") }) end, "grep string" },

        { "<leader>fb",  function() require('telescope.builtin').git_branches() end,                                     "git branches" },
        { "<leader>fq",  function() require('telescope.builtin').quickfix() end,                                         "quickfix" },

        { "<leader>gt",  function() require('telescope.builtin').tags() end,                                             "go to ctags" },
        { "<leader>rt",  function() vim.cmd [[!ctags -f .tags --languages=all --exclude=.git -R .]] end,                 "refresh ctags" },
    },
}
