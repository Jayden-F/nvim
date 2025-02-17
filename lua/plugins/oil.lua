return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {
        default_file_explorer = true,
        view_options = {
            show_hidden = true,
        },
        lsp_file_methods = {
            enabled = true,
            timeout_ms = 2000,
            autosave_changes = false,
        },
    },
}
