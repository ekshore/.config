-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    -- One Dark theme for NeoVim
    use('navarasu/onedark.nvim')
    -- Gruv Box theme for NeoVim
    use { "ellisonleao/gruvbox.nvim" }
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
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' }, -- Required
        }
    }

    -- Highlight Trailing whitespace
--    use {
--        'lukoshkin/highlight-whitespace',
--        config = function()
--            require 'highlight-whitespace'.setup {
--                tws = '\\s\\+$',
--                clear_on_winleave = false,
--                user_palette = {
--                    markdown = {
--                        tws = 'RosyBrown',
--                        ['\\(\\S\\)\\@<=\\s\\(\\.\\|,\\)\\@='] = 'CadetBlue3',
--                        ['\\(\\S\\)\\@<= \\{2,\\}\\(\\S\\)\\@='] = 'SkyBlue1',
--                        ['\\t\\+'] = 'plum4',
--                    },
--                    other = {
--                        tws = 'PaleVioletRed',
--                        ['\\(\\S\\)\\@<=\\s\\(,\\)\\@='] = 'coral1',
--                        ['\\(\\S\\)\\@<= \\{2,\\}\\(\\S\\)\\@='] = 'LightGoldenrod3',
--                        ['\\t\\+'] = 'plum4',
--                    }
--                }
--            }
--        end
--    }
end)
