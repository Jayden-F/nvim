local ih = require('lsp-inlayhints')
ih.setup()

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('lspconfig').lua_ls.setup({
    on_attach = function(client, bufnr)
        ih.on_attach(client, bufnr)
    end,
    settings = {
        Lua = {
            hint = {
                enable = true,
            },
        },
    },
})


require('lspconfig').pylsp.setup({
    on_attach = function(client, bufnr)
        -- Attach inlay hints
        ih.on_attach(client, bufnr)

        -- Other on_attach configurations for clangd
    end,
})
