call ddu#custom#patch_local('filer', #{
    \   ui: 'filer',
    \   uiParams: #{
    \     filer: #{
    \       split: 'vertical',
    \       splitDirection: 'topleft',
    \       winWidth: &columns / 8,
    \     },
    \   },
    \   actionOptions: #{
    \     open: #{
    \       quit: v:false,
    \     },
    \   },
    \ })

