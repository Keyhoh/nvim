call ddu#custom#patch_local('rg', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       autoAction: #{
    \         name: 'preview',
    \       },
    \       floatingBorder: 'single',
    \       floatingTitle: 'Fuzzy Finder',
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
    \       autoAction: #{
    \         name: 'preview',
    \       },
    \       floatingBorder: 'single',
    \       floatingTitle: 'Finder',
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
    \   sources: [#{name: 'file_rec', params: #{ignoredDirectories: get(g:, 'ignored_directories', [])}}],
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

