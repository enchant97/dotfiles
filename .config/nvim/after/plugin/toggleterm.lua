--
-- Toggle Terminals
--
-- To specify specific terminal to open,
-- press number before key-press
--
require("toggleterm").setup({
    open_mapping = '<c-\\>',
    autochdir = true,
    insert_mapping = false,
})

--
-- Toggle Current Terminal
--

vim.keymap.set('n', '<leader>tf', function()
    vim.cmd('ToggleTerm direction=float')
end, { desc = 'toggle terminal - floating' })
vim.keymap.set('n', '<leader>th', function()
    vim.cmd('ToggleTerm direction=horizontal')
end, { desc = 'toggle terminal - horizontal' })
vim.keymap.set('n', '<leader>tv', function()
    vim.cmd('ToggleTerm direction=vertical')
end, { desc = 'toggle terminal - vertical' })

-- Enable ESC to work in terminal
function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
