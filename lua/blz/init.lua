require("blz.remap")
require("blz.set")
require("blz.packer")

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

function toggle_nvim_tree()
  local bufdir = vim.fn.expand('%:p:h')
  if vim.fn.isdirectory(bufdir) == 1 then
    vim.api.nvim_set_current_dir(bufdir)
    vim.cmd('NvimTreeToggle')
  end
end

vim.api.nvim_command('autocmd BufEnter * lua toggle_nvim_tree()')
