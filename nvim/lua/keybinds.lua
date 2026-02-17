local key = vim.keymap
local ls = require("luasnip")
 
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

key.set("i", "<C-K>", function() ls.expand() end, {silent = true})
key.set({"i", "s"}, "<C-l>", function() ls.jump( 1) end, {silent = true})
key.set({"i", "s"}, "<C-h>", function() ls.jump(-1) end, {silent = true})

key.set({"i", "s"}, "<C-k>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
