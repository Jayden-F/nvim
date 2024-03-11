require("obsidian").setup({
    workspaces = {
        {
            name = "notes",
            path = "~/repos/notes",
        },
    },

    ui = { enable = false,},

    picker = {
        -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', or 'mini.pick'.
        name = "telescope.nvim",
        -- Optional, configure key mappings for the picker. These are the defaults.
        -- Not all pickers support all mappings.
        mappings = {
            -- Create a new note from your query.
            new = "<C-x>",
            -- Insert a link to the selected note.
            insert_link = "<C-l>",
        },
    },
}
)
