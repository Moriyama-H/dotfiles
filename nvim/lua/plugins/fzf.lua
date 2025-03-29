return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {
  },
  config = function()
	vim.keymap.set("n", "<C-p>", [[<Cmd>lua require"fzf-lua".files()<CR>]], {})
	vim.keymap.set("n", "<C-\\>", [[<Cmd>lua require"fzf-lua".buffers()<CR>]], {})
	vim.keymap.set("n", "<C-k>", [[<Cmd>lua require"fzf-lua".builtin()<CR>]], {})
	vim.keymap.set("n", "<C-l>", [[<Cmd>lua require"fzf-lua".live_grep_glob()<CR>]], {})
	vim.keymap.set("n", "<C-g>", [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], {})
	vim.keymap.set("n", "<F1>", [[<Cmd>lua require"fzf-lua".help_tags()<CR>]], {})
  end,
}
