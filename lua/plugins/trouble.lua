return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 keys = {
   {"<leader>tt", function() require("trouble").toggle() end, "Trouble"},
   {"<leader>tw", function() require("trouble").toggle("workspace_diagnostics") end, "Trouble Workspace"},
   {"<leader>td", function() require("trouble").toggle("document_diagnostics") end , "Trouble Document"},
   {"<leader>tq",function() require("trouble").toggle("quickfix") end, "Trouble Quickfix"},
   {"<leader>tl",function() require("trouble").toggle("loclist")end , "Trouble Loclist"},
   {"gr",function() require("trouble").toggle("lsp_references") end, "Trouble References"},
   {"gd",function() require("trouble").toggle("lsp_definitions") end, "Trouble Definitions"},
 },
 opts = {
 },
}
