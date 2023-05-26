-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- One Dark theme for NeoVim
    use('navarasu/onedark.nvim')
    -- Code Minimap
    use('wfxr/minimap.vim')
    -- Treesitter for AST and code coloring
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('nvim-treesitter/nvim-treesitter-context')
    -- Harpoon is for quick file switching
    use('theprimeagen/harpoon')
    -- Undo tree for undo history
    use('mbbill/undotree')
    -- git integration
    use('tpope/vim-fugitive')

    -- Telescope file search
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- Highlight Trailing whitespace
    use {
        'lukoshkin/trailing-whitespace',
        config = function()
            require 'trailing-whitespace'.setup {
                patterns = { '\\s\\+$' },
                palette = { markdown = 'RosyBrown' },
                default_color = 'PaleVioletRed',
            }
        end
    }
end)
