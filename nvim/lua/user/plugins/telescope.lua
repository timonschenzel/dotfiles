local actions = require('telescope.actions')

vim.cmd([[
  highlight link TelescopePromptTitle PMenuSel
  highlight link TelescopePreviewTitle PMenuSel
  highlight link TelescopePromptNormal NormalFloat
  highlight link TelescopePromptBorder FloatBorder
  highlight link TelescopeNormal CursorLine
  highlight link TelescopeBorder CursorLineBg
]])

require('telescope').setup({
  defaults = {
    path_display = { truncate = 1 },
    layout_config = {
      prompt_position = 'bottom',
    },
    sorting_strategy = 'descending',
    mappings = {
      i = {
        ['<esc>'] = actions.close,
        ['<C-Down>'] = actions.cycle_history_next,
        ['<C-Up>'] = actions.cycle_history_prev,
      },
    },
    file_ignore_patterns = { '.git/', '.local_git_packages', 'node_modules' },
  },
  pickers = {
    find_files = {
      theme = 'ivy',
      previewer = false,
      hidden = true,
    },
    buffers = {
      theme = 'ivy',
      previewer = false,
      layout_config = {
        width = 80,
      },
    },
    oldfiles = {
      theme = 'ivy',
      previewer = false,
      prompt_title = 'History',
    },
    lsp_references = {
      theme = 'ivy',
      previewer = false,
    },
    live_grep = {
      theme = 'ivy',
    },
  },
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('live_grep_args')

vim.keymap.set('n', '<leader>p', [[<cmd>lua require('telescope.builtin').find_files()<CR>]])
vim.keymap.set('n', '<leader>P', [[<cmd>lua require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' })<CR>]])
vim.keymap.set('n', '<leader>b', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
vim.keymap.set('n', '<leader>g', [[<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>]])
vim.keymap.set('n', '<leader>e', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])
vim.keymap.set('n', '<leader>l', [[<cmd>lua require('telescope.builtin').lsp_document_symbols({ symbols = {"module", "function", "method", "interface", "constructor"} })<CR>]])
