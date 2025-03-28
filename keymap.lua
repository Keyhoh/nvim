vim.keymap.set('i', 'jj', '<Esc>')

vim.keymap.set('n', 'Y', 'y$')
vim.keymap.set('n', 'gb', "<Cmd>exe v:count.'bnext'<CR>")
vim.keymap.set('n', 'gB', "<Cmd>exe v:count.'bprevious'<CR>")
vim.keymap.set('n', 'gD', 'g]')
vim.keymap.set("n", "]g", function() vim.diagnostic.jump({ count = 1, float = true }) end)
vim.keymap.set("n", "[g", function() vim.diagnostic.jump({ count = -1, float = true }) end)
vim.keymap.set("n", "]e", function() vim.diagnostic.jump({ count = 1, float = true, severity = vim.diagnostic.severity.ERROR }) end)
vim.keymap.set("n", "[e", function() vim.diagnostic.jump({ count = -1, float = true, severity = vim.diagnostic.severity.ERROR  }) end)
vim.keymap.set("n", "]w", function() vim.diagnostic.jump({ count = 1, float = true, severity = vim.diagnostic.severity.WARN  }) end)
vim.keymap.set("n", "[w", function() vim.diagnostic.jump({ count = -1, float = true, severity = vim.diagnostic.severity.WARN   }) end)
vim.keymap.set("n", "]h", function() vim.diagnostic.jump({ count = 1, float = true, severity = vim.diagnostic.severity.HINT  }) end)
vim.keymap.set("n", "[h", function() vim.diagnostic.jump({ count = -1, float = true, severity = vim.diagnostic.severity.HINT   }) end)


vim.keymap.set('n', '<Leader><Leader>i', '<Cmd>call DppInstallerInstall()<CR>')
vim.keymap.set('n', '<Leader><Leader>u', '<Cmd>call DppInstallerUpdate()<CR>')

vim.keymap.set('n', '<Leader>e', "<Cmd>call ddu#start(#{ name: 'filer', resume: v:true })<CR>")
vim.keymap.set('n', '<Leader>o', "<Cmd>call ddu#start(#{ name: 'ff' })<CR>")
vim.keymap.set('n', '<Leader>f', "<Cmd>call ddu#start(#{ name: 'rg' })<CR>")
vim.keymap.set('n', '<Leader>r', "<Cmd>call ddu#start(#{ name: 'ref' })<CR>")
vim.keymap.set('n', '<Leader>d', "<Cmd>call ddu#start(#{ name: 'def' })<CR>")
vim.keymap.set('n', '<Leader>i', "<Cmd>call ddu#start(#{ name: 'impl' })<CR>")
vim.keymap.set('n', '<Leader>hc', "<Cmd>call ddu#start(#{ name: 'callHier' })<CR>")
vim.keymap.set('n', '<Leader>ht', "<Cmd>call ddu#start(#{ name: 'typeHier' })<CR>")
vim.keymap.set('n', '<space>?', vim.diagnostic.open_float)

vim.keymap.set('n', '<Leader>c', '<Cmd>Copilot panel<CR>')
