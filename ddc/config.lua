local capabilities = require('ddc_source_lsp').make_client_capabilities()
local lsp_list = vim.g.lsp_list or {}
for _, lsp in pairs(lsp_list) do
  local lsp_settings = lsp.settings or {}
  require('lspconfig')[lsp.name].setup({
    capabilities = capabilities,
    settings = lsp_settings,
  })
end

