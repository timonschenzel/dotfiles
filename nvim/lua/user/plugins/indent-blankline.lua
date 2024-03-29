vim.opt.termguicolors = true

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#34404d gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#415161 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#34404d gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#415161 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#34404d gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#415161 gui=nocombine]]

vim.opt.list = true

require('indent_blankline').setup({
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
  char_highlight_list = {
      "IndentBlanklineIndent1",
      "IndentBlanklineIndent2",
      "IndentBlanklineIndent3",
      "IndentBlanklineIndent4",
      "IndentBlanklineIndent5",
      "IndentBlanklineIndent6",
  },
  filetype_exclude = {
    'help',
    'terminal',
    'dashboard',
    'packer',
    'lspinfo',
    'TelescopePrompt',
    'TelescopeResults',
  },
  buftype_exclude = {
    'terminal',
    'NvimTree',
  },
})