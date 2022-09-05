-- IMPORTANT NOTE : Thiis the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the strucutre of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

M.options = {
  user = function()
    vim.opt.relativenumber = true
    vim.opt.clipboard = ""
  end
}

-- M.ui = {
--   theme = "nord"
-- }

---------------------------------------------------------------------

-- M.mappings.plugins = {
--   lspconfig = {
--     add_workspace_folder = "",
--     remove_workspace_folder = "",
--     list_workspace_folders = "",
--   }
-- }

M.mappings = require "custom.mappings"

-- NvChad included plugin options & overrides
M.plugins = {
  user = require "custom.plugins",
  remove = {
    "folke/which-key.nvim",
  },
  options = {
    lspconfig = {
      -- path of file containing setups of different lsps (ex : "custom.plugins.lspconfig"), read the docs for more info
      setup_lspconf = "custom.plugin_confs.lspconfig",
    },
    nvimtree = {
      enable_git = 1,
    },
    blankline = {
      char = '|',
      use_treesitter = true,
      show_trailing_blankline_indent = true,
      show_first_indent_level = true,
    },
    gitsigns = {
      current_line_blame = true,
      current_line_blame_formatter_opts = {
        relative_time = true,
      },
      signs = {
        add = { hl = 'GitGutterAdd', text = '+' },
        change = { hl = 'GitGutterChange', text = '~' },
        delete = { hl = 'GitGutterDelete', text = '_' },
        topdelete = { hl = 'GitGutterDelete', text = '‾' },
        changedelete = { hl = 'GitGutterChange', text = '~' },
      },
    },
  },
  -- To change the Packer `config` of a plugin that comes with NvChad,
  -- add a table entry below matching the plugin github name
  --              '-' -> '_', remove any '.lua', '.nvim' extensions
  -- this string will be called in a `require`
  --              use "(custom.configs).my_func()" to call a function
  --              use "custom.blankline" to call a file
  default_plugin_config_replace = {},
}

return M
