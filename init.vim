let g:python3_host_prog='/usr/bin/python3'
set encoding=utf-8

if isdirectory(".nvim") && filereadable(".nvim/mode.vim")
    source .nvim/mode.vim
endif

source ~/.config/nvim/dpp/init.vim
source ~/.config/nvim/ddu/init.vim
source ~/.config/nvim/ddc/init.vim
source ~/.config/nvim/config.vim
source ~/.config/nvim/keymap.vim

source ~/.config/nvim/workspace/init.vim

