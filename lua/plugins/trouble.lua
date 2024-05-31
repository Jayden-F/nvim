local trouble = require("trouble")

return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>tt", function() trouble.toggle() end,                        "Trouble" },
        { "<leader>tw", function() trouble.toggle("workspace_diagnostics") end, "Trouble Workspace" },
        { "<leader>td", function() trouble.toggle("document_diagnostics") end,  "Trouble Document" },
        { "<leader>tq", function() trouble.toggle("quickfix") end,              "Trouble Quickfix" },
        { "<leader>tl", function() trouble.toggle("loclist") end,               "Trouble Loclist" },
        { "gr",         function() trouble.toggle("lsp_references") end,        "Trouble References" },
        { "gd",         function() trouble.toggle("lsp_definitions") end,       "Trouble Definitions" },
    },
    opts = {
    },
}
