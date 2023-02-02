require('dashboard').setup({
  theme = 'doom',
  config = {
    header = {
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
    },
    center = {
      { keymap = 'SPC e', icon = '  ', icon_hl = 'Title', desc = 'Recent Files', desc_hl = 'String', key = 'r', key_hl = 'Number', action = 'Telescope oldfiles' },
      { keymap = 'SPC p', icon = '  ', icon_hl = 'Title', desc = 'Find File', desc_hl = 'String', key = 'f', key_hl = 'Number', action = 'Telescope find_files' },
      { keymap = 'SPC g', icon = '  ', icon_hl = 'Title', desc = 'Find Word', desc_hl = 'String', key = 'w', key_hl = 'Number', action = 'Telescope live_grep' },
      { keymap = 'SPC t', icon = '󰱼  ', icon_hl = 'Title', desc = 'Find Symbol', desc_hl = 'String', key = 's', key_hl = 'Number', action = 'Telescope lsp_dynamic_workspace_symbols' },
      { keymap = 'SPC n', icon = '  ', icon_hl = 'Title', desc = 'New File', desc_hl = 'String', key = 'n', key_hl = 'Number', action = 'enew' },
    },
    footer = {}
  }
})
