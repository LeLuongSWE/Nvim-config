-- lua/plugins/colorscheme.lua
return {
  {
    'binhtran432k/dracula.nvim',
    as = 'dracula',
    config = function()
      vim.cmd('colorscheme dracula-soft')
    end
  }
}
