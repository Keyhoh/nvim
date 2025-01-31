call ddu#custom#patch_global(#{
    \   uiParams: #{
    \     ff: #{
    \       autoAction: #{
    \         name: 'preview',
    \       },
    \       floatingBorder: 'single',
    \       sort: 'filename',
    \       sortTreesFirst: v:true,
    \       split: 'floating',
    \       startAutoAction: v:true,
    \       winHeight: '&lines - 4',
    \       winWidth: '&columns / 2 - 2',
    \       winRow: 0,
    \       winCol: 0,
    \       previewFloating: v:true,
    \       previewFloatingBorder: 'single',
    \       previewFloatingTitle: 'Preview',
    \       previewHeight: '&lines - 4',
    \       previewWidth: '&columns / 2 - 2',
    \       previewRow: 1,
    \       previewCol: '&columns / 2 + 1',
    \     },
    \   },
    \   sourceOptions: #{
    \     smartCase: v:true,
    \     ignoreCase: v:true,
    \   },
    \   kindOptions: #{
    \     file: #{
    \       defaultAction: 'open',
    \     },
    \     lsp: #{
    \       defaultAction: 'open',
    \     },
    \     lsp_codeAction: #{
    \       defaultAction: 'apply',
    \     },
    \   },
    \ })

call ddu#custom#patch_local('rg', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       floatingTitle: 'Fuzzy Finder',
    \     },
    \   },
    \   sources: [#{
    \     name: 'rg',
    \   }],
    \   sourceOptions: #{
    \     rg: #{
    \       matchers: ['matcher_substring'],
    \       volatile: v:true,
    \     },
    \   },
    \   sourceParams: #{
    \     rg: #{
    \       args: ['--json'],
    \     },
    \   },
    \ })

call ddu#custom#patch_local('ff', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       floatingTitle: 'Finder',
    \     },
    \   },
    \   sources: [#{
    \     name: 'file_rec',
    \     params: #{
    \       ignoredDirectories: get(g:, 'ignored_directories', []),
    \     },
    \   }],
    \   sourceOptions: #{
    \     file_rec: #{
    \       matchers: ['matcher_substring'],
    \     },
    \   },
    \ })

call ddu#custom#patch_local('def', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       floatingTitle: 'Definition',
    \       immediateAction: 'open',
    \     },
    \   },
    \   sources: [#{
    \     name: 'lsp_definition'
    \   }],
    \   sourceOptions: #{
    \     lsp_definition: #{
    \       matchers: ['matcher_substring'],
    \     },
    \   },
    \   sync: v:true,
    \ })

call ddu#custom#patch_local('impl', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       floatingTitle: 'Definition',
    \       immediateAction: 'open',
    \     },
    \   },
    \   sources: [#{
    \     name: 'lsp_definition',
    \     params: #{
    \       method: 'textDocument/implementation',
    \     },
    \   }],
    \   sourceOptions: #{
    \     lsp_definition: #{
    \       matchers: ['matcher_substring'],
    \     },
    \   },
    \   sync: v:true,
    \ })

call ddu#custom#patch_local('ref', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       floatingTitle: 'References',
    \       immediateAction: 'open',
    \     },
    \   },
    \   sources: [#{
    \     name: 'lsp_references',
    \   }],
    \   sourceOptions: #{
    \     lsp_references: #{
    \       matchers: ['matcher_substring'],
    \     },
    \   },
    \   sync: v:true,
    \ })

call ddu#custom#patch_local('callHier', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       displayTree: v:true,
    \       floatingTitle: 'Call hierarchy',
    \     },
    \   },
    \   sources: [#{
    \     name: 'lsp_callHierarchy',
    \   }],
    \ })

call ddu#custom#patch_local('typeHier', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       displayTree: v:true,
    \       floatingTitle: 'Type hierarchy',
    \     },
    \   },
    \   sources: [#{
    \     name: 'lsp_typeHierarchy',
    \   }],
    \ })

call ddu#custom#patch_local('filer', #{
    \   ui: 'filer',
    \   uiParams: #{
    \     filer: #{
    \       autoAction: #{
    \         name: 'preview',
    \       },
    \       floatingBorder: 'single',
    \       floatingTitle: 'Filer',
    \       sort: 'filename',
    \       sortTreesFirst: v:true,
    \       split: 'floating',
    \       startAutoAction: v:true,
    \       winHeight: '&lines - 4',
    \       winWidth: '&columns / 2 - 2',
    \       winRow: 0,
    \       winCol: 0,
    \       previewFloating: v:true,
    \       previewFloatingBorder: 'single',
    \       previewFloatingTitle: 'Preview',
    \       previewHeight: '&lines - 4',
    \       previewWidth: '&columns / 2 - 2',
    \       previewRow: 1,
    \       previewCol: '&columns / 2 + 1',
    \     },
    \   },
    \   sources: [#{
    \     name: 'file',
    \   }],
    \   sourceOptions: #{
    \     file: #{
    \       columns: ['icon_filename'],
    \     },
    \   },
    \ })

