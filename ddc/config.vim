lua << EOF
local capabilities = require("ddc_source_lsp").make_client_capabilities()
require("lspconfig").denols.setup({
  capabilities = capabilities,
})
EOF

call ddc#custom#patch_global(#{
    \   ui: 'pum',
    \   sources: ['lsp', 'around', 'file'],
    \   sourceOptions: #{
    \     lsp: #{
    \       mark: 'LSP',
    \       forceCompletionPattern: '\.\w*|:\w*|->\w*',
    \     },
    \     around: #{mark: 'A'},
    \     file: #{mark: 'F'},
    \     _: #{
    \       matchers: ['matcher_head'],
    \       sorters: ['sorter_rank'],
    \     },
    \   },
    \   sourceParams: #{
    \     lsp: #{
    \       snippetEngine: denops#callback#register({
    \         body -> vsnip#anonymous(body)
    \       }),
    \       enableResolveItem: v:true,
    \       enableAdditionalTextEdit: v:true,
    \     },
    \   },
    \ })

call ddc#enable()

