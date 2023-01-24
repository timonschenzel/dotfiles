local dashboard = require('dashboard')

dashboard.custom_header = {
  '',
  '',
  '',
  '',
  '',
  '⠰⣶⡄      ⣶⣶  ⣶⡆               ',
  ' ⣿⣿     ⢠⣿⠇  ⠉                ',
  ' ⠈⣿⡆    ⣿⡿   ⣶⡆  ⣶⣆⣴⣿⣿⣷⣄⢀⣶⣿⣿⣶ ',
  '  ⢻⣿   ⢰⣿⠁   ⣿⡇  ⣿⡿   ⠹⣿⡟   ⢻⣿',
  '   ⣿⣇  ⣿⡏    ⣿⡇  ⣿⡇    ⣿⡇   ⢸⣿',
  '   ⠸⣿ ⣸⣿     ⣿⡇  ⣿⡇    ⣿⡇   ⢸⣿',
  '    ⢿⣷⣿⠃     ⣿⡇  ⣿⡇    ⣿⡇   ⢸⣿',
  '    ⠈⣿⡿      ⣿⡇  ⣿⡇    ⣿⡇   ⢸⣿',
  '',
  '',
  '',
  '',
  '',
}

dashboard.custom_center = {
  { icon = '  ', desc = 'New file                       ', action = 'enew' },
  { icon = '  ', shortcut = 'SPC p', desc = 'Find file                 ', action = 'Telescope find_files' },
  { icon = '  ', shortcut = 'SPC e', desc = 'Recent files              ', action = 'Telescope oldfiles' },
  { icon = '  ', shortcut = 'SPC g', desc = 'Find Word                 ', action = 'Telescope live_grep' },
  { icon = '  ', shortcut = 'SPC t', desc = 'Find Symbol               ', action = 'Telescope lsp_workspace_symbols' },
}

dashboard.custom_footer = { '' }

vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#6272a4' })
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = '#f8f8f2' })
vim.api.nvim_set_hl(0, 'DashboardShortcut', { fg = '#bd93f9' })
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#6272a4' })
