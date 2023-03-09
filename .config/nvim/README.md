# Neovim

## Requirements
- NVIM >= V0.8
- Run `scripts/nvim-deps`
- Run Packer Install Or Update
    1. Open Neovim at: `./config/nvim/lua/enchant97/packer.lua`
    2. `:so` then `:PackerSync`


## Custom Keybinds
> Leader = white-space

| Map            | Description                    | Plugin        |
| :------------- | :----------------------------- | :------------ |
| `<leader>pv`   | Open netrw                     | -             |
| `<leader>u`    | Toggle Undo Panel              | undotree      |
| `<leader>x`    | Toggle Diagnostics Panel       | trouble       |
| `[number] c-\` | Toggle Terminal                | toggleterm    |
| `<leader>tf`   | Terminal Floating              | toggleterm    |
| `<leader>th`   | Terminal Horizontal            | toggleterm    |
| `<leader>tv`   | Terminal Vertical              | toggleterm    |
| `<leader>ft`   | Find Comments (TODOs, etc)     | todo-comments |
| `<leader>ff`   | Find Files                     | telescope     |
| `<leader>ps`   | Find Find Filtered             | telescope     |
| `<c-f>`        | Find Git Files                 | telescope     |
| `<c-b>`        | Toggle File Tree Panel         | nvim-tree     |
| `<c-a>`        | Add File To Harpoon            | harpoon       |
| `<leader>q`    | Toggle Harpoon Window          | harpoon       |
| `<leader>gs`   | Toggle Git Panel               | fugitive      |
