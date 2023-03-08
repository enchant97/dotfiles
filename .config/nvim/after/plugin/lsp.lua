local lsp = require('lsp-zero').preset("recommended")

lsp.ensure_installed({
    -- LSP's
    'rust_analyzer',
    'gopls',
    'pyright',
    'tsserver',
    'lua_ls',
    'html',
    'cssls',
    'jsonls',
    'yamlls',
    'dockerls',
    'texlab',
})

lsp.setup()
