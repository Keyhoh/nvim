vim.g.mapleader = ' '

vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.keymap.set('n', '<S-y>', 'y$')
vim.keymap.set('i', 'jj', '<Esc>')

vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/github/copilot.vim' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/nvim-telescope/telescope.nvim' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
  { src = 'https://github.com/NeogitOrg/neogit' },
  { src = 'https://github.com/dracula/vim' },
})

local nvimtree = require('nvim-tree.api')
local telescope = require('telescope.builtin')
local neogit = require('neogit')

require('nvim-tree').setup()
require('lualine').setup()
neogit.setup({ kind = 'floating' })

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd.colorscheme('dracula')

vim.keymap.set('n', '<Leader>e', nvimtree.tree.open)
vim.keymap.set('n', '<Leader>ff', telescope.find_files)
vim.keymap.set('n', '<Leader>fg', telescope.live_grep)
vim.keymap.set('n', '<Leader>fb', telescope.buffers)
vim.keymap.set('n', '<Leader>fh', telescope.help_tags)
vim.keymap.set('n', '<Leader>gg', neogit.open)

vim.keymap.set('n', 'gri', telescope.lsp_implementations)
vim.keymap.set('n', 'grr', telescope.lsp_references)
vim.keymap.set('n', 'grd', telescope.lsp_definitions)

