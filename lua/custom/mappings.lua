local M = {}

M.disabled = {
  n = {
    ["<leader>uu"] = "",
  }
}

M.general = {
  n = {
    ["Y"] = {"\"+y"},
    ["<leader>w"] = {"<C-W>"},
    ["<leader>ss"] = {":w<CR>"},
    ["<leader>sq"] = {":wq<CR>"},
    ["<leader>qa"] = {":qa<CR>"},
    ["<leader>qc"] = {":cclose<CR>:lclose<CR>"},
  }
}

M.tab = {
  n = {
    ["<leader>tn"] = {":tabNext<CR>"},
    ["<leader>tp"] = {"tabprevious<cr>"},
    ["<leader>tc"] = {":tabnew<cr>"},
    ["<leader>tq"] = {":tabclose<cr>"},
  }
}

M.hop = {
  n = {
    ["<leader><leader>w"] = {"<cmd>lua require'hop'.hint_words()<cr>"},
  }
}

M.telescope = {
  n = {
    ["<leader>fs"] = {":Telescope lsp_document_symbols<CR>"},
    ["<leader>fj"] = {":Telescope jumplist<CR>"},
    ["<leader>fm"] = {":Telescope marks<CR>"},
  }
}

return M