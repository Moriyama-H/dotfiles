local options = {
	encoding = 'utf-8',
	fileencodings = {'iso-2022-jp', 'euc-jp', 'sjis', 'utf-8'},
    number=true,
    tabstop=4,
    shiftwidth=4,
    smartindent=true,
    termguicolors=true,
    wrap=false,
	spelllang = {'en', 'cjk'}, -- set spell languages
}

vim.opt.shortmess:append("c")
vim.opt.clipboard:append({"unnamedplus"}) -- share system clipboard

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- colorscheme
-- vim.cmd('colorscheme iceberg')
vim.cmd('colorscheme tokyonight-day')

-- netrw options
vim.g.netrw_altv = 1 -- Open files in alternative vertical split
vim.g.netrw_preview = 1 -- Enable file preview

-- cursor
-- vim.opt.guicursor = "n-v-c:block,i:ver50,r-cr:hor20,o:hor50" -- ver not worked
vim.opt.guicursor = "n-v-c:block,i:block,r-cr:hor20,o:hor50"

-- $BFCDj$N%U%!%$%k%?%$%W$G%9%Z%k%A%'%C%/$rM-8z2=(B
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "markdown", "text", "tex"}, -- $BBP>]$N%U%!%$%k%?%$%W(B
    callback = function()
        vim.opt.spell = true          -- $B%9%Z%k%A%'%C%/$rM-8z2=(B
        vim.opt.spelllang = {"en", "cjk"}      -- $B%9%Z%k%A%'%C%/$N8@8l!JI,MW$K1~$8$FJQ99!K(B
		vim.opt.wrap = true		-- Enable wrap
    end,
})

-- keymap
vim.keymap.set('n', '<C-l>', ':tabnext<CR>', { noremap = true, silent = true }) -- Switch to next tab
vim.keymap.set('n', '<C-h>', ':tabprevious<CR>', { noremap = true, silent = true }) -- Switch to previous tab
-- vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]], { noremap = true, silent = true }) -- Map ESCx2 to exit terminal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true }) -- Map ESC to exit terminal mode

vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true }) -- Move down visual line
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true }) -- Move up visual line
vim.keymap.set('n', 'gj', 'j', { noremap = true, silent = true }) -- Move down 
vim.keymap.set('n', 'gk', 'k', { noremap = true, silent = true }) -- Move up 

-- Disable line numbers in terminal mode
group = vim.api.nvim_create_augroup('TerminalSettings', { clear = true })
vim.api.nvim_create_autocmd('TermOpen', {
    group = group,
    pattern = '*',
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
		vim.cmd('startinsert')	-- enter insert mode automatically
    end,
})

-- make command: replace punctuation marks
-- enable with/without range
vim.api.nvim_create_user_command("ReplacePunctuation", function(opts)
  local range = opts.line1 .. "," .. opts.line2
  vim.cmd(range .. "s/\u{3001}/\u{FF0C}/ge")  -- \u{3001}$B!J!"!K(B $B"*(B \u{FF0C}$B!J!$!K(B
  vim.cmd(range .. "s/\u{3002}/\u{FF0E}/ge")  -- \u{3002}$B!J!#!K(B $B"*(B \u{FF0E}$B!J!%!K(B
end, { range = "%"})

vim.api.nvim_create_user_command("ReplacePunctuationReverse", function(opts)
  local range = opts.line1 .. "," .. opts.line2
  vim.cmd(range .. "s/\u{FF0C}/\u{3001}/ge")  -- \u{FF0C}$B!J!$!K"*(B \u{3001}$B!J!"!K(B
  vim.cmd(range .. "s/\u{FF0E}/\u{3002}/ge")  -- \u{FF0E}$B!J!%!K"*(B \u{3002}$B!J!#!K(B
end, { range = "%"})
