----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------
-- don'fuck with leader key using insert mode

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
-- map('', '<up>', '<nop>')
-- map('', '<down>', '<nop>')
-- map('', '<left>', '<nop>')
-- map('', '<right>', '<nop>')

-- insert mode mappings
map('i', 'jj', '<Esc>') -- mapping for normal mode
map('i', '<C-l>', '<right>') -- no arrow keys insert mode
map('i', '<C-h>', '<left>')
map('i', '<C-k>', '<up>')
map('i', '<C-j>', '<down>')

map('n', '<leader>v', '<C-q>') --visual block mode
map('n', '<up>', '<C-u>')             -- with neoscroll smooth scrolling
map('n', '<down>', '<C-d>')           -- with neoscroll smooth scrolling

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

--map('i', '<leader>s', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')
-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
-- map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
-- map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')           -- open/close

map('n', '<leader>f', ':FzfLua oldfiles<CR>')          -- Telescope find
map('n', '<C-t>', ':FzfLua<CR>')               -- Telescope

map('n', '<leader>a', ':set spell!<CR>') --spell checking
map('n', '<leader>t', ':LspStop<CR>') -- LSP stop
map('n', '<leader>n', ':bNext<CR>') -- next buffer

-- map('n', '<leader>h', ':0r /home/nimendra/.config/nvim/lua/core/myheader.txt<CR>')
