call ddc#custom#patch_global(#{
    \   ui: 'pum',
    \   sources: ['lsp', 'file', 'around'],
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

call ddc#custom#patch_filetype(['sql', 'mysql', 'plsql'], #{
    \   sources: ['dadbod-completion', 'around'],
    \   sourceOptions: #{
    \     around: #{
    \       mark: 'A',
    \     },
    \     dadbod-completion: #{
    \       mark: 'DB',
    \     },
    \     _: #{
    \       matchers: ['matcher_head'],
    \       sorters: ['sorter_rank'],
    \     },
    \   },
    \ })

call ddc#enable()

