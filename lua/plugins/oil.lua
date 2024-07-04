return {
    'stevearc/oil.nvim',
    keys = {
        { "<leader>fv", function() require('oil').open() end, desc = 'Open [O]il' }
    },
    cmd = "Oil",
    event = { "VimEnter */*,.*", "BufNew */*,.*" },
    opts = {
        default_file_explorer = true,
        columns = {
            "icon",
            "permissions",
            "mtime",
            "size"
        },
        use_default_keymaps = false,
        keymaps = {
            ["g?"] = "actions.show_help",
            ["<CR>"] = "actions.select",
            ["<leader>o"] = "actions.open_external",
            ["<leader>\\"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
            ["<leader>-"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
            ["<leader><CR>"] = "actions.preview",
        },
        view_options = {
            show_hidden = true,
        }
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
