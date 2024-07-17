autocmd FileType ddu-ff call s:ddu_ff_settings()
function! s:ddu_ff_settings() abort
  nnoremap <buffer><silent> <CR>
        \ <Cmd>call ddu#ui#do_action('itemAction')<CR>
  nnoremap <buffer><silent> <Space>
        \ <Cmd>call ddu#ui#do_action('toggleSelectItem')<CR>
  nnoremap <buffer><silent> i
        \ <Cmd>call ddu#ui#do_action('openFilterWindow')<CR>
  nnoremap <buffer><silent> q
        \ <Cmd>call ddu#ui#do_action('quit')<CR>
endfunction

autocmd FileType ddu-filer call s:ddu_filer_settings()
function! s:ddu_filer_settings() abort
  nnoremap <buffer><silent> <CR>
        \ <Cmd>call ddu#ui#do_action('itemAction')<CR>
  nnoremap <buffer><silent> <Space>
        \ <Cmd>call ddu#ui#do_action('toggleSelectItem')<CR>
  nnoremap <buffer> o
        \ <Cmd>call ddu#ui#do_action('expandItem',
        \ #{mode: 'toggle'})<CR>
  nnoremap <buffer> n
              \ <Cmd>call ddu#ui#do_action('itemAction',
        \ #{name:'newFile'})<CR>
  nnoremap <buffer> d
              \ <Cmd>call ddu#ui#do_action('itemAction',
        \ #{name:'delete'})<CR>
  nnoremap <buffer> r
              \ <Cmd>call ddu#ui#do_action('itemAction',
        \ #{name:'rename'})<CR>
  nnoremap <buffer><silent> q
        \ <Cmd>call ddu#ui#do_action('quit')<CR>
endfunction

