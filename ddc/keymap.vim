inoremap <silent><expr> <C-Space>
    \ pum#visible() ? '<Cmd>call pum#map#insert_relative(+1)<CR>' :
    \ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
    \ '<C-n>' : ddc#map#manual_complete()
inoremap <C-n> <Cmd>call pum#map#insert_relative(+1)<CR>
inoremap <C-p> <Cmd>call pum#map#insert_relative(-1)<CR>
inoremap <C-e> <Cmd>call pum#map#cancel()<CR>
inoremap <silent><expr> <CR> pum#visible() ? '<Cmd>call pum#map#confirm()<CR>' : '<CR>'

