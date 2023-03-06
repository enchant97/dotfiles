local builtin = require('telescope.builtin')
-- find any files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- find only files under git scm
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
-- find using grep filtering
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

