return {
    -- the colorscheme should be available when starting Neovim
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    {
        'ray-x/navigator.lua',
        dependencies = {
            { 'ray-x/guihua.lua', build = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    }
}
