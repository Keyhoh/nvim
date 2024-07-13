nnoremap <S-y> y$
inoremap jj <Esc>
nnoremap gb <Cmd>exe v:count."bnext"<CR>
nnoremap g<S-b> <Cmd>exe v:count."bprevious"<CR>

nnoremap <Leader><Leader>i <Cmd>call DppInstallerInstall()<CR>
nnoremap <Leader><Leader>u <Cmd>call DppInstallerUpdate()<CR>

nnoremap <Leader>z <Cmd>call ddu#start(#{name: 'ff'})<CR>

