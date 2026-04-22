vim.keymap.set('n', '<S-y>', 'y$')
vim.keymap.set('i', 'jj', '<Esc>')

local nvimtree = require('nvim-tree.api')
vim.keymap.set('n', '<Leader>e', nvimtree.tree.open)

local neogit = require('neogit')
vim.keymap.set('n', '<Leader>gg', neogit.open)

local telescope = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', telescope.find_files)
vim.keymap.set('n', '<Leader>fg', telescope.live_grep)
vim.keymap.set('n', '<Leader>fb', telescope.buffers)
vim.keymap.set('n', '<Leader>fh', telescope.help_tags)

vim.keymap.set('n', 'gri', telescope.lsp_implementations)
vim.keymap.set('n', 'grr', telescope.lsp_references)
vim.keymap.set('n', 'grd', telescope.lsp_definitions)
vim.keymap.set('n', 'grt', telescope.lsp_type_definitions)


