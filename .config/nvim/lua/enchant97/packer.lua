-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- faster loading speed
    use 'lewis6991/impatient.nvim'
    -- tmux integration
    use {
        'christoomey/vim-tmux-navigator',
    }
    -- list of ...
    use {
        'folke/trouble.nvim',
        requires = 'nvim-tree/nvim-web-devicons'
    }
    -- fuzzy search
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Comment highlighting
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }
    -- edtior theme
    use {
        'navarasu/onedark.nvim',
        as = 'onedark',
        config = function()
            require("onedark").setup({
                style = 'warmer',
                transparent = false,
            })
            vim.cmd('colorscheme onedark')
        end
    }
    -- syntax highlighting
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    -- file bookmark menu
    use('ThePrimeagen/harpoon')
    -- fancy undo
    use('mbbill/undotree')
    -- git stuff
    use('tpope/vim-fugitive')
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
    -- customisable window bar
    use {
        'fgheng/winbar.nvim',
        config = function()
            require('winbar').setup({
                enabled = true,
            })
        end
    }
    -- customisable footer
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons' }
    }
    -- hint when leader, etc is pressed
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 400
            require("which-key").setup {
            }
        end
    }
    -- file tree panel
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- highlighting hex colors
    use {
        'norcalli/nvim-colorizer.lua',
        config = function ()
            require('colorizer').setup()
        end
    }
    -- highlighting for indent lines
    use 'lukas-reineke/indent-blankline.nvim'
    -- lsp
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

end)
