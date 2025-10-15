require('ddc_source_lsp_setup').setup()

local lsp_list = vim.g.lsp_list or {}
for _, lsp in pairs(lsp_list) do
  local options = lsp.options or {}
  vim.lsp.config(lsp.name, options)
  vim.lsp.enable(lsp.name)
end

