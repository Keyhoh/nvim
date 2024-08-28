const s:tag_file = '.nvim/tags'
const s:ctags_command = '!ctags -R --tag-relative=yes -f ' . s:tag_file

function! GenerateTags()
    if exists('g:ctags_option')
        execute s:ctags_command . ' ' . g:ctags_option
    else
        execute s:ctags_command
    endif
endfunction

if !filereadable(s:tag_file)
    silent! execute s:ctags_command
endif

set tags=.nvim/tags

