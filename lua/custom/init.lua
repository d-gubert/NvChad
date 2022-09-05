-- This is where you custom modules and plugins goes.
-- See the wiki for a guide on how to extend NvChad

require("core.utils").load_mappings()

-- Github Copilot
-- map("i", "<C-I>", "copilot#Accept(\"\\<CR>\")", { silent = true, script = true, expr = true })

-- Setting those in chadrc wasn't working
-- maybe because the framework doesn't specifically
-- set those options
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:▸ ")

vim.api.nvim_command([[ autocmd BufWritePre * :%s/\s\+$//e ]])

-- stop sourcing filetype.vim
vim.g.did_load_filetypes = 1

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

-- require "custom.plugins.mkdir"
