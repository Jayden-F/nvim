return {
    'stevearc/oil.nvim',
    keys = {
        { "<leader>fv", function() require('oil').open() end, desc = 'Open [O]il' }
    },
    cmd = "Oil",
    event = { "VimEnter */*,.*", "BufNew */*,.*" },
    opts = {
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
            ["<leader><CR>"] = "actions.open_external",
        },
        default_file_explorer = true,
        view_options = {
            show_hidden = true,
        }
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
