" Vim color file
" Converted from Textmate theme Slime using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Slime"

" PHP
hi phpFunction ctermfg=179 ctermbg=NONE cterm=NONE guifg=NONE gui=NONE
hi phpType ctermfg=9 ctermbg=NONE cterm=NONE guifg=NONE gui=NONE
hi link phpDocTags phpType
hi link phpClass phpType
hi link phpUseClass phpType
hi link phpMemberSelector phpType
hi link phpRegion phpType
hi phpMethod ctermfg=14 ctermbg=NONE cterm=NONE guifg=NONE gui=NONE
hi link phpIdentifier phpMethod
hi link phpVarSelector phpMethod
hi link phpMethodsVar phpMethod
hi phpKeyword ctermfg=12 ctermbg=NONE cterm=NONE guifg=NONE gui=NONE
hi link phpParent phpKeyword
hi link Delimiter phpKeyword
hi link phpInclude phpKeyword

" Command-T
hi CommandT ctermfg=14 ctermbg=179 cterm=NONE guifg=#ffffff guibg=#c7af3f gui=NONE

hi Cursor ctermfg=17 ctermbg=231 cterm=NONE guifg=#292d30 guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=179 cterm=NONE guifg=NONE guibg=#c7af3f gui=NONE
hi CursorLineNR ctermfg=15 ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
 hi CursorLine ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3e4245 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3e4245 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3e4245 gui=NONE
hi LineNr ctermfg=59 ctermbg=NONE cterm=NONE guifg=#4f5a63 guibg=NONE
"hi LineNr ctermfg=246 ctermbg=59 cterm=NONE guifg=#949698 guibg=#3e4245 gui=NONE
hi VertSplit ctermfg=0 ctermbg=0 cterm=NONE guifg=#676a6c guibg=#676a6c gui=NONE
hi MatchParen ctermfg=145 ctermbg=NONE cterm=underline guifg=#9fb3c2 guibg=NONE gui=underline
hi StatusLine ctermfg=15 ctermbg=59 cterm=bold guifg=#ffffff guibg=#676a6c gui=bold
hi StatusLineNC ctermfg=15 ctermbg=0 cterm=NONE guifg=#ffffff guibg=#676a6c gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=179 cterm=NONE guifg=NONE guibg=#c7af3f gui=NONE
hi IncSearch ctermfg=17 ctermbg=230 cterm=NONE guifg=#292d30 guibg=#faffdb gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi Folded ctermfg=59 ctermbg=17 cterm=NONE guifg=#4f5a63 guibg=#292d30 gui=NONE

" hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Boolean ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi Character ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#4f5a63 guibg=NONE gui=italic cterm=italic
hi Conditional ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi DiffAdd ctermfg=15 ctermbg=64 cterm=bold guifg=#ffffff guibg=#47840e gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b090a guibg=NONE gui=NONE
hi DiffChange ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#253c5c gui=NONE
hi DiffText ctermfg=15 ctermbg=24 cterm=bold guifg=#ffffff guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=38 cterm=NONE guifg=#f8f8f0 guibg=#00a8c6 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=38 cterm=NONE guifg=#f8f8f0 guibg=#00a8c6 gui=NONE
hi Float ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi Function ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi Identifier ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi Keyword ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi Label ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE

hi NonText ctermfg=0 ctermbg=NONE cterm=NONE guifg=#3b3a32 guibg=NONE gui=NONE
hi Number ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi Operator ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi PreProc ctermfg=103 ctermbg=NONE cterm=NONE guifg=#80919f guibg=NONE gui=NONE
hi Special ctermfg=15 ctermbg=NONE cterm=NONE guifg=#ffffff guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=59 cterm=NONE guifg=#3b3a32 guibg=#3e4245 gui=NONE
hi Statement ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi StorageClass ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi String ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi Tag ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi Title ctermfg=15 ctermbg=NONE cterm=bold guifg=#ffffff guibg=NONE gui=bold
hi Todo ctermfg=59 ctermbg=NONE cterm=inverse,bold guifg=#4f5a63 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi rubyFunction ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi rubyConstant ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi rubyEscape ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi rubyControl ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi rubyException ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#4f5a63 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi cssColor ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=145 ctermbg=NONE cterm=NONE guifg=#9fb3c2 guibg=NONE gui=NONE
hi cssClassName ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi cssValueLength ctermfg=179 ctermbg=NONE cterm=NONE guifg=#c7af3f guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=230 ctermbg=NONE cterm=NONE guifg=#faffdb guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
