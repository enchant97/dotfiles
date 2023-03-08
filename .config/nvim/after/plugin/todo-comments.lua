require("todo-comments").setup({
    highlight = {
        pattern = [[.*<(KEYWORDS)\s*]],
        after = "",
        keyword = "",
    },
    search = {
        pattern = [[\b(KEYWORDS)\b]],
    }
})

vim.keymap.set("n", "<leader>ft", function()
    vim.cmd("TodoTelescope")
end, { silent = true, noremap = true, desc = "Find Comments (TODOs, etc)" })
