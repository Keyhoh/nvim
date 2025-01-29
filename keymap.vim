nnoremap <S-y> y$
inoremap jj <Esc>
nnoremap gb <Cmd>exe v:count.'bnext'<CR>
nnoremap g<S-b> <Cmd>exe v:count.'bprevious'<CR>
nnoremap g<S-d> g]

nnoremap <Leader><Leader>i <Cmd>call DppInstallerInstall()<CR>
nnoremap <Leader><Leader>u <Cmd>call DppInstallerUpdate()<CR>
nnoremap <silent> <Leader><Leader>r <Cmd>call GenerateTags()<CR><CR>

nnoremap <Leader>e <Cmd>call ddu#start(#{name: 'filer', resume: v:true})<CR>
nnoremap <Leader>f <Cmd>call ddu#start(#{name: 'ff'})<CR>
nnoremap <Leader><S-f> <Cmd>call ddu#start(#{name: 'rg'})<CR>
nnoremap <Leader>r <Cmd>call ddu#start(#{name: 'ref'})<CR>
nnoremap <Leader>d <Cmd>call ddu#start(#{name: 'def'})<CR>
nnoremap <Leader>i <Cmd>call ddu#start(#{name: 'impl'})<CR>
nnoremap <Leader>hc <Cmd>call ddu#start(#{name: 'callHier'})<CR>
nnoremap <Leader>ht <Cmd>call ddu#start(#{name: 'typeHier'})<CR>
nnoremap <Leader>t <Cmd>call ddt#start(#{name: 'terminal'})<CR>

nnoremap <Leader>c <Cmd>Copilot panel<CR>

