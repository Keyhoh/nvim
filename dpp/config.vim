" Set dpp base path (required)
const s:dpp_base = '~/.cache/dpp'
const s:dpp_config = '~/.config/nvim/dpp/config.ts'

" Set dpp source path (required)
" NOTE: The plugins must be cloned before.
const s:dpp_src = '~/.cache/dpp/repos/github.com/Shougo/dpp.vim'
const s:denops_src = '~/.cache/dpp/repos/github.com/vim-denops/denops.vim'
const s:dpp_installer = '~/.cache/dpp/repos/github.com/Shougo/dpp-ext-installer'
const s:dpp_lazy = '~/.cache/dpp/repos/github.com/Shougo/dpp-ext-lazy'
const s:dpp_toml = '~/.cache/dpp/repos/github.com/Shougo/dpp-ext-toml'
const s:dpp_protocol_git = '~/.cache/dpp/repos/github.com/Shougo/dpp-protocol-git'

" Set dpp runtime path (required)
execute 'set runtimepath^=' .. s:dpp_src

if s:dpp_base->dpp#min#load_state()
  " NOTE: dpp#make_state() requires denops.vim
  " NOTE: denops.vim and dpp plugins are must be added
  execute 'set runtimepath^=' .. s:denops_src
  execute 'set runtimepath^=' .. s:dpp_installer
  execute 'set runtimepath^=' .. s:dpp_lazy
  execute 'set runtimepath^=' .. s:dpp_toml
  execute 'set runtimepath^=' .. s:dpp_protocol_git

  autocmd User DenopsReady
    \ : echohl WarningMsg
    \ | echomsg 'dpp load_state() is failed'
    \ | echohl NONE
    \ | call dpp#make_state(s:dpp_base, s:dpp_config)
endif

autocmd User Dpp:makeStatePost
  \ : echohl WarningMsg
  \ | echomsg 'dpp make_state() is done'
  \ | echohl NONE

function DppMakeState()
  call dpp#make_state()
endfunction

function DppInstallerInstall()
  call dpp#async_ext_action('installer', 'install')
endfunction

function DppInstallerUpdate()
  call dpp#async_ext_action('installer', 'update')
endfunction

