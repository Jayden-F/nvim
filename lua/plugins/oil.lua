return {
    'stevearc/oil.nvim',
    keys = {
        { "<leader>fv", function() require('oil').open() end, desc = 'Open [O]il' }
    },
    cmd = "Oil",
    event = { "VimEnter */*,.*", "BufNew */*,.*" },
    opts = {
        default_file_explorer = true,
        view_options = {
            show_hidden = true,
        }
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
}
