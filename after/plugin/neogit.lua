local neogit = require('neogit')

neogit.setup {
    -- Place your configuration parameters for neogit here.
    -- For example:
    integrations = {
        diffview = true, -- Enables the diffview integration if you're using diffview
        telescope = true,
    },
    graph_style = "unicode",
}

vim.keymap.set("n", "<leader>gs", function() neogit.open() end)
