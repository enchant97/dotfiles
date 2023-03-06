local lsp = require('lsp-zero').preset("recommended")

lsp.ensure_installed({
	'rust_analyzer',
})

lsp.setup()
