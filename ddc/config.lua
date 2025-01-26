local capabilities = require('ddc_source_lsp').make_client_capabilities()
local lsp_list = vim.g.lsp_list or {}
for _, lsp in pairs(lsp_list) do
  require('lspconfig')[lsp].setup({
    capabilities = capabilities,
  })
end

