if exists('g:nvim_mode')
    if g:nvim_mode == 'ide'
        source ~/.config/nvim/workspace/ide/init.vim
    endif
endif

if isdirectory('.nvim') && filereadable('.nvim/init.vim')
    source .nvim/init.vim
endif

