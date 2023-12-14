vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "gr", function() require("trouble").toggle("lsp_references") end)

