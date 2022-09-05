return {
  [ "tpope/vim-surround" ] = {},
  [ "tpope/vim-sleuth" ] = {},
  [ "nathom/filetype.nvim" ] = {},
  [ "gpanders/editorconfig.nvim" ] = {},
  [ "karb94/neoscroll.nvim" ] = {
    config = function()
      require("neoscroll").setup()
    end,
    setup = function()
      require("core.utils").packer_lazy_load "neoscroll.nvim"
    end,
    },
  [ "jose-elias-alvarez/null-ls.nvim" ] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugin_confs.null-ls").setup()
    end,
  },
  [ 'ruifm/gitlinker.nvim' ] = {
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require("gitlinker").setup()
    end,
  },
  [ 'phaazon/hop.nvim' ] = {
    as = 'hop',
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup()
    end
  },
  [ 'tanvirtin/vgit.nvim' ] = {
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('vgit').setup()
    end,
  },
  -- { "wakatime/vim-wakatime" },
  --  {
  --   'nvim-treesitter/nvim-treesitter-textobjects',
  --   branch = "0.5-compat",
  --   event = 'BufRead',
  --   config = function()
  --     require('nvim-treesitter-textobjects').setup()
  --   end,
  -- }
}