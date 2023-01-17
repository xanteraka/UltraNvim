vim.cmd[[colorscheme gruvbox]]
vim.g.mapleader = " "
vim.cmd("set number")
vim.diagnostic.config({virtual_text=true})

-- telescope general keymaps 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- nvim tree specific keybingdings 
vim.keymap.set('n', '<leader>tt', vim.cmd.NvimTreeToggle)
