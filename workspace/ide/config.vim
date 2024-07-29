let s:tag_file = '.nvim/tags'
let s:ctags_command = '!ctags -R --tag-relative=yes -f ' . s:tag_file

function! GenerateTags()
    execute s:ctags_command
endfunction

if !filereadable(s:tag_file)
    silent! execute s:ctags_command
endif

set tags=./.nvim/tags

