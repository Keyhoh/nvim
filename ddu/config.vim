call ddu#custom#patch_local('rg', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       sort: 'filename',
    \       sortTreesFirst: v:true,
    \       split: 'floating',
    \       winHeight: '&lines - 8',
    \       winWidth: '&columns / 2 - 2',
    \       winRow: 1,
    \       winCol: 1,
    \       previewFloating: v:true,
    \       previewHeight: '&lines - 8',
    \       previewWidth: '&columns / 2 - 2',
    \       previewRow: 1,
    \       previewCol: '&columns / 2 + 1',
    \     },
    \   },
    \   sources: [#{name: 'rg', params: {}}],
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
    \   kindOptions: #{
    \     file: #{
    \       defaultAction: 'open',
    \     },
    \   },
    \ })

call ddu#custom#patch_local('ff', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       sort: 'filename',
    \       sortTreesFirst: v:true,
    \       split: 'floating',
    \       winHeight: '&lines - 8',
    \       winWidth: '&columns / 2 - 2',
    \       winRow: 1,
    \       winCol: 1,
    \       previewFloating: v:true,
    \       previewHeight: '&lines - 8',
    \       previewWidth: '&columns / 2 - 2',
    \       previewRow: 1,
    \       previewCol: '&columns / 2 + 1',
    \     },
    \   },
    \   sources: [#{name: 'file_rec', params: #{ ignoredDirectories: ['.git', 'dist', 'build', 'node_modules', '.next']}}],
    \   sourceOptions: #{
    \     file_rec: #{
    \       matchers: ['matcher_substring'],
    \     },
    \   },
    \   kindOptions: #{
    \     file: #{
    \       defaultAction: 'open',
    \     },
    \   },
    \ })

call ddu#custom#patch_local('filer', #{
    \   ui: 'filer',
    \   uiParams: #{
    \     filer: #{
    \       autoResize: v:true,
    \       sort: 'filename',
    \       sortTreesFirst: v:true,
    \       split: 'vertical',
    \       previewSplit: 'no',
    \     },
    \   },
    \   sources: [#{name: 'file', params: {}}],
    \   sourceOptions: #{
    \     file: #{
    \       columns: ['filename'],
    \     },
    \   },
    \   kindOptions: #{
    \     file: #{
    \       defaultAction: 'open',
    \     },
    \   },
    \ })

