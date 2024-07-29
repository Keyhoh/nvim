nnoremap <S-y> y$
inoremap jj <Esc>
nnoremap gb <Cmd>exe v:count."bnext"<CR>
nnoremap g<S-b> <Cmd>exe v:count."bprevious"<CR>

nnoremap <Leader><Leader>i <Cmd>call DppInstallerInstall()<CR>
nnoremap <Leader><Leader>u <Cmd>call DppInstallerUpdate()<CR>
nnoremap <silent> <Leader><Leader>r <Cmd>call GenerateTags()<CR><CR>

nnoremap <Leader>e <Cmd>call ddu#start(#{name: 'filer'})<CR>
nnoremap <Leader>f <Cmd>call ddu#start(#{name: 'ff'})<CR>

nnoremap <Leader>c <Cmd>Copilot panel<CR>

