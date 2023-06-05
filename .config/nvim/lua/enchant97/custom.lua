local api = vim.api

api.nvim_create_user_command('ToggleTheme', function()
    require('onedark').toggle()
end, { desc = "Toggle between themes" })
