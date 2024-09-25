local discipline = require("craftzdog.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"1p')
keymap.set("n", "<Leader>P", '"1P')
keymap.set("v", "<Leader>p", '"1p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")
--
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
-- keymap.set("n", "<C-j>", function()
-- 	vim.diagnostic.goto_next()
-- end, opts)

keymap.set("n", "<leader>r", function()
	require("craftzdog.hsl").replaceHexWithHSL()
end)

keymap.set("n", "<leader>i", function()
	require("craftzdog.lsp").toggleInlayHints()
end)

--toggleterm

vim.api.nvim_set_keymap("n", "<leader>1", ":ToggleTerm 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", ":ToggleTerm 2<CR>", { noremap = true, silent = true })

--dap
-- vim.api.nvim_set_keymap("n", "<F5>", "<cmd>lua require('dap').continue()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<F10>", "<cmd>lua require('dap').step_over()<CR>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n", "<F12>", "<cmd>lua require('dap').step_out()<CR>", { noremap = true, silent = true })
--

--mutilple-curor

vim.api.nvim_set_keymap(
	"n",
	"<Leader>a",
	":MultipleCursorsAddMatches<CR>",
	{ noremap = true, silent = true, desc = "Add cursors to cword" }
)
vim.api.nvim_set_keymap(
	"x",
	"<Leader>a",
	":MultipleCursorsAddMatches<CR>",
	{ noremap = true, silent = true, desc = "Add cursors to cword" }
)
vim.api.nvim_set_keymap(
	"n",
	"<C-A-Down>",
	":MultipleCursorsAddDown<CR>",
	{ noremap = true, silent = true, desc = "Add cursor and move down" }
)
vim.api.nvim_set_keymap(
	"i",
	"<C-A-Down>",
	":MultipleCursorsAddDown<CR>",
	{ noremap = true, silent = true, desc = "Add cursor and move down" }
)

vim.api.nvim_set_keymap(
	"n",
	"<C-A-Up>",
	":MultipleCursorsAddUp<CR>",
	{ noremap = true, silent = true, desc = "Add cursor and move up" }
)
vim.api.nvim_set_keymap(
	"i",
	"<C-A-Up>",
	":MultipleCursorsAddUp<CR>",
	{ noremap = true, silent = true, desc = "Add cursor and move up" }
)
vim.api.nvim_set_keymap(
	"n",
	"<Leader>A",
	":MultipleCursorsAddJumpNextMatch<CR>",
	{ noremap = true, silent = true, desc = "Add cursor and jump to next cword" }
)
vim.api.nvim_set_keymap(
	"x",
	"<Leader>A",
	":MultipleCursorsAddJumpNextMatch<CR>",
	{ noremap = true, silent = true, desc = "Add cursor and jump to next cword" }
)
