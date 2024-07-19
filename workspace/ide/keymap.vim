autocmd FileType ddu-filer call s:ddu_filer_settings()
function! s:ddu_filer_settings() abort
  nnoremap <buffer> <CR>
	\ <Cmd>call ddu#ui#do_action('itemAction',
	\ #{ name: 'open', params: #{ command: 'wincmd p <Bar> drop' } })<CR>
endfunction

