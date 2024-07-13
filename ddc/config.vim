call ddc#custom#patch_global(#{
    \   ui: 'pum',
    \   sources: ['around'],
    \   sourceOptions: #{
    \     around: #{mark: 'A'},
    \     _: #{
    \       matchers: ['matcher_head'],
    \       sorters: ['sorter_rank'],
    \     },
    \   },
    \ })

call ddc#enable()

