local key = vim.keymap

-- telescope search files, grep, buffers, and help
local builtin = require('telescope.builtin')
key.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
key.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
key.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
key.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- show diagnostic message at cursor in a floating window
key.set("n", "<leader>ls", vim.diagnostic.open_float, {
	desc = "Show diagnostic at cursor",
})

-- format file with language server protocol
key.set('n', '<leader>lf', vim.lsp.buf.format)

-- show menu with lsp autocompletions
key.set("i", "<C-Space>", "<C-x><C-o>")

-- open file explorer
key.set('n', '<leader>cd', ":Explore<CR>")
