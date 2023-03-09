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

vim.keymap.set("n", "<c-I>", function()
    vim.cmd("LspZeroFormat")
end, { silent = true, noremap = true, desc = "Format Current Buffer" })
