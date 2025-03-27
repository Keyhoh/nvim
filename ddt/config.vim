call ddt#custom#patch_local('terminal', #{
    \   ui: 'terminal',
    \   uiParams: #{
    \     terminal: #{
    \       command: ['zsh'],
    \     },
    \   },
    \ })

let g:denops#server#deno_args = [
    \   '-q',
    \   '-A',
    \ ]
let g:denops#server#deno_args += ['--unstable-ffi']

if !isdirectory(expand('~/.cache/ddt'))
    call mkdir(expand('~/.cache/ddt'), 'p')
endif
                                                         
call ddt#custom#patch_local('shell', #{
    \   ui: 'shell',
    \   uiParams: #{
    \     shell: #{
    \       prompt: '%',
    \       promptPattern: '\w*% \?',
    \       userPrompt: 'fnamemodify(getcwd(), ":~")',
    \       shellHistoryPath: expand('~/.cache/ddt/shell_history'),
    \     },
    \   },
    \ })

