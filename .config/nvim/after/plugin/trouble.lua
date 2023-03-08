require("trouble").setup({
    height = 30,
})

vim.keymap.set("n", "<leader>x", function()
    vim.cmd("TroubleToggle")
end, { silent = true, noremap = true, desc = "Toggle Diagnostics Panel" })
