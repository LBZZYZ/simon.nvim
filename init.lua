vim.opt.showmode = false

-- 关闭原生的 netrw，用 NvimTree 代替
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- 开启 24bit 颜色
vim.opt.termguicolors = true

-- 把全局 Leader 键设为空格
vim.g.mapleader = ' '

-- 开启绝对行号
-- vim.opt.number = true
-- 开启相对行号
vim.opt.relativenumber = true

-- 开关文件树 (Toggle)
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle File Tree' })
-- 聚焦到文件树 (Focus)
vim.keymap.set('n', '<leader>fe', ':NvimTreeFocus<CR>', { silent = true, desc = 'Focus File Tree' })

require('config.lazy')
