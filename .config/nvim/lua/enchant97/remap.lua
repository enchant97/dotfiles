-- what is the leader key
vim.g.mapleader = " "
-- disable suspend process
vim.keymap.set("n", "<c-z>", "<nop>")
-- open directory explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = 'Open Directory Explorer' })
