call ddu#custom#patch_local('ff', #{
    \   ui: 'ff',
    \   uiParams: #{
    \     ff: #{
    \       split: 'floating',
    \     },
    \   },
    \   sources: [#{name: 'file_rec', params: {}}],
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
    \       split: 'floating',
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

