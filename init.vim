let g:python3_host_prog='/usr/bin/python3'
set encoding=utf-8

if isdirectory('.nvim') && filereadable('.nvim/beforeInit.vim')
    source .nvim/beforeInit.vim
endif

if isdirectory('.nvim') && filereadable('.nvim/beforeInit.lua')
    source .nvim/beforeInit.lua
endif

source ~/.config/nvim/dpp/init.vim
source ~/.config/nvim/ddu/init.vim
source ~/.config/nvim/ddc/init.vim
" source ~/.config/nvim/ddt/init.vim
source ~/.config/nvim/config.lua
source ~/.config/nvim/keymap.lua

if isdirectory('.nvim') && filereadable('.nvim/afterInit.vim')
    source .nvim/afterInit.vim
endif

