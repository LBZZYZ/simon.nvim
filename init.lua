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

-- 开启不可见字符显示
vim.opt.list = true

-- 自定义这些不可见字符长什么样（配合你的 Nerd Font 图标）
vim.opt.listchars = {
  tab = '» ', -- Tab 键的开头显示 »，后面用空格补齐
  trail = '•', -- 行尾多余的无用空格（Trailing Spaces）显示为一个小圆点
  nbsp = '␣', -- 不换行空格
  extends = '→', -- 当一行太长屏幕装不下时，右侧边缘显示的提示
  precedes = '←', -- 左侧边缘显示的提示
  -- space = '⋅', -- 如果你想让普通的每一个空格都显示成点，可以解开这行（但代码会很密）
}

-- 开关文件树 (Toggle)
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true, desc = 'Toggle File Tree' })
-- 聚焦到文件树 (Focus)
vim.keymap.set('n', '<leader>fe', ':NvimTreeFocus<CR>', { silent = true, desc = 'Focus File Tree' })

vim.keymap.set('n', '<leader>h', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<leader>l', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next Buffer' })

require('config.lsp')
require('config.lazy')

vim.cmd.colorscheme('tokyonight-night')
