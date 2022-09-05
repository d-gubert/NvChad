local ok, null_ls = pcall(require, "null-ls")

if not ok then
   return
end

local b = null_ls.builtins

local sources = {

   -- JS html css stuff
   b.formatting.prettierd.with {
      filetypes = { "html", "json", "markdown", "scss", "css", "javascript", "javascriptreact" },
   },

   b.diagnostics.eslint.with {
      command = "eslint_d",
   },

   -- Shell
   b.formatting.shfmt,
   b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}

local M = {}
M.setup = function()
  require("null-ls").setup({
    sources = sources,
  })
end

return M
