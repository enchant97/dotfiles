require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "help", "lua", "c", "javascript", "javascript", "typescript", "html", "css", "rust", "go", "python", "yaml", "json", "markdown" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
}
