" Vim color file
" Modified from flatland.vim
"
" Grayscale used so far: 16(0) 251(198) 231(255) 59(95) 102(135)
" 229 (yellow) 67(steel blue) 74(blue) 192 or 193(green) 202(red orange)
" Consider changing: visual, folded

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "flatland"

hi Cursor       ctermfg=16   ctermbg=16   cterm=NONE      guifg=#26292c guibg=#646769 gui=NONE
hi Visual       ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE    guibg=#515559 gui=NONE
hi CursorLine   ctermfg=NONE ctermbg=none cterm=underline guifg=NONE    guibg=#3b3e40 gui=NONE
hi ColorColumn  ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE    guibg=#3b3e40 gui=NONE
hi MatchParen   ctermfg=74   ctermbg=NONE cterm=underline guifg=#fa9a4b guibg=NONE    gui=underline
hi TabLine      ctermfg=231  ctermbg=16   cterm=none
hi TabLineFill  ctermfg=231  ctermbg=16   cterm=underline
hi TabLineSel   ctermfg=231  ctermbg=67   cterm=bold
hi LineNr       ctermfg=251  ctermbg=16   cterm=NONE      guifg=#8f9192 guibg=#3b3e40 gui=NONE
hi CursorLineNr ctermfg=231  ctermbg=none   cterm=bold      guifg=#8f9192 guibg=#3b3e40 gui=NONE
hi StatusLine   ctermfg=231  ctermbg=59   cterm=bold      guifg=#f8f8f8 guibg=#636567 gui=bold
hi StatusLineNC ctermfg=231  ctermbg=59   cterm=NONE      guifg=#f8f8f8 guibg=#636567 gui=NONE
hi Pmenu        ctermfg=192  ctermbg=NONE cterm=NONE      guifg=#72aaca guibg=NONE    gui=NONE
hi PmenuSel     ctermfg=NONE ctermbg=59   cterm=NONE      guifg=NONE    guibg=#3c3f42 gui=NONE
hi VertSplit    ctermfg=59   ctermbg=59   cterm=NONE      guifg=#636567 guibg=#636567 gui=NONE
hi Directory    ctermfg=74  ctermbg=NONE cterm=underline guifg=#b8d977 guibg=NONE    gui=NONE
hi Folded       ctermfg=102  ctermbg=16   cterm=NONE      guifg=#798188 guibg=#26292c gui=NONE

hi IncSearch    ctermfg=16   ctermbg=231  cterm=bold      guifg=#26292c guibg=#f6f6f6 gui=NONE
hi Search       ctermfg=231  ctermbg=67   cterm=bold      guifg=NONE    guibg=NONE    gui=underline

hi Normal       ctermfg=231  ctermbg=NONE   cterm=NONE         guifg=#f8f8f8 guibg=NONE gui=NONE
hi Constant     ctermfg=229  ctermbg=NONE cterm=NONE         guifg=#b8d977 guibg=NONE    gui=NONE
hi String       ctermfg=231  ctermbg=NONE cterm=NONE         guifg=#f6f6f6 guibg=NONE    gui=NONE
" hi Boolean      ctermfg=229  ctermbg=NONE cterm=NONE         guifg=#b8d977 guibg=NONE    gui=NONE
" hi Character    ctermfg=229  ctermbg=NONE cterm=NONE         guifg=#b8d977 guibg=NONE    gui=NONE
" hi Number       ctermfg=229  ctermbg=NONE cterm=NONE         guifg=#b8d977 guibg=NONE    gui=NONE
" hi Float        ctermfg=229  ctermbg=NONE cterm=NONE         guifg=#b8d977 guibg=NONE    gui=NONE
hi Comment      ctermfg=102  ctermbg=NONE cterm=NONE         guifg=#798188 guibg=NONE    gui=NONE
hi Identifier   ctermfg=202  ctermbg=NONE cterm=NONE         guifg=#f6f080 guibg=NONE    gui=NONE
" hi Function     ctermfg=192   ctermbg=NONE cterm=NONE         guifg=#72aaca guibg=NONE    gui=NONE
hi Statement    ctermfg=74   ctermbg=NONE cterm=NONE         guifg=#fa9a4b guibg=NONE    gui=NONE
" hi Conditional  ctermfg=74  ctermbg=NONE cterm=NONE         guifg=#fa9a4b guibg=NONE    gui=NONE
" hi Repeat       ctermfg=74  ctermbg=NONE cterm=NONE         guifg=#fa9a4b guibg=NONE    gui=NONE
" hi Label        ctermfg=231  ctermbg=NONE cterm=NONE         guifg=#f6f6f6 guibg=NONE    gui=NONE
" hi Operator     ctermfg=74  ctermbg=NONE cterm=NONE         guifg=#fa9a4b guibg=NONE    gui=NONE
" hi Keyword      ctermfg=74  ctermbg=NONE cterm=NONE         guifg=#fa9a4b guibg=NONE    gui=NONE
" hi Exception    ctermfg=74  ctermbg=NONE cterm=NONE         guifg=#fa9a4b guibg=NONE    gui=NONE

hi Define       ctermfg=74   ctermbg=NONE cterm=NONE         guifg=#fa9a4b guibg=NONE    gui=NONE
hi DiffAdd      ctermfg=231  ctermbg=22   cterm=bold         guifg=#f8f8f8 guibg=#46830e gui=bold
hi DiffDelete   ctermfg=88   ctermbg=NONE cterm=NONE         guifg=#8b0809 guibg=NONE    gui=NONE
hi DiffChange   ctermfg=231  ctermbg=24   cterm=NONE         guifg=#f8f8f8 guibg=#233a5a gui=NONE
hi DiffText     ctermfg=231  ctermbg=17   cterm=bold         guifg=#f8f8f8 guibg=#204a87 gui=bold
hi ErrorMsg     ctermfg=231  ctermbg=167  cterm=NONE         guifg=#f8f8f8 guibg=#aa2915 gui=NONE
hi WarningMsg   ctermfg=231  ctermbg=167  cterm=NONE         guifg=#f8f8f8 guibg=#aa2915 gui=NONE
hi NonText      ctermfg=102  ctermbg=NONE   cterm=NONE         guifg=#7a8288 guibg=NONE gui=NONE
hi EndOfBuffer  ctermfg=NONE   ctermbg=NONE   cterm=NONE
hi PreProc      ctermfg=74   ctermbg=NONE cterm=NONE         guifg=#fa9a4b guibg=NONE    gui=NONE
hi Special      ctermfg=231  ctermbg=NONE cterm=NONE         guifg=#f8f8f8 guibg=NONE    gui=NONE
hi SpecialKey   ctermfg=102  ctermbg=59   cterm=NONE         guifg=#7a8288 guibg=#3b3e40 gui=NONE
hi StorageClass ctermfg=202  ctermbg=NONE cterm=NONE         guifg=#f6f080 guibg=NONE    gui=NONE
hi Tag          ctermfg=192  ctermbg=NONE cterm=NONE         guifg=#72aaca guibg=NONE    gui=NONE
hi Title        ctermfg=231  ctermbg=NONE cterm=bold         guifg=#f8f8f8 guibg=NONE    gui=bold
hi Todo         ctermfg=102  ctermbg=NONE cterm=inverse,bold guifg=#798188 guibg=NONE    gui=inverse,bold
hi Type         ctermfg=192  ctermbg=NONE cterm=NONE         guifg=#72aaca guibg=NONE    gui=NONE
hi Underlined   ctermfg=NONE ctermbg=NONE cterm=underline    guifg=NONE    guibg=NONE    gui=underline

hi rubyClass                    ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fa9a4b guibg=NONE gui=NONE
hi rubyFunction                 ctermfg=192   ctermbg=NONE cterm=NONE guifg=#72aaca guibg=NONE gui=NONE
hi rubyInterpolationDelimiter   ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE    guibg=NONE gui=NONE
hi rubySymbol                   ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b8d977 guibg=NONE gui=NONE
hi rubyConstant                 ctermfg=192   ctermbg=NONE cterm=NONE guifg=#72aaca guibg=NONE gui=NONE
hi rubyStringDelimiter          ctermfg=231  ctermbg=NONE cterm=NONE guifg=#f6f6f6 guibg=NONE gui=NONE
hi rubyBlockParameter           ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyInstanceVariable         ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyInclude                  ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fa9a4b guibg=NONE gui=NONE
hi rubyGlobalVariable           ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyRegexp                   ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRegexpDelimiter          ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyEscape                   ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b8d977 guibg=NONE gui=NONE
hi rubyControl                  ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fa9a4b guibg=NONE gui=NONE
hi rubyClassVariable            ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyOperator                 ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fa9a4b guibg=NONE gui=NONE
hi rubyException                ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fa9a4b guibg=NONE gui=NONE
hi rubyPseudoVariable           ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fb9a4b guibg=NONE gui=NONE
hi rubyRailsUserClass           ctermfg=192   ctermbg=NONE cterm=NONE guifg=#72aaca guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsARMethod            ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsRenderMethod        ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRailsMethod              ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi erubyDelimiter               ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE    guibg=NONE gui=NONE
hi erubyComment                 ctermfg=102  ctermbg=NONE cterm=NONE guifg=#798188 guibg=NONE gui=NONE
hi erubyRailsMethod             ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi htmlTag                      ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b7d877 guibg=NONE gui=NONE
hi htmlEndTag                   ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b7d877 guibg=NONE gui=NONE
hi htmlTagName                  ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b7d877 guibg=NONE gui=NONE
hi htmlArg                      ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b7d877 guibg=NONE gui=NONE
hi htmlSpecialChar              ctermfg=221  ctermbg=NONE cterm=NONE guifg=#f1e94b guibg=NONE gui=NONE
hi javaScriptFunction           ctermfg=202  ctermbg=NONE cterm=NONE guifg=#f6f080 guibg=NONE gui=NONE
hi javaScriptRailsFunction      ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi javaScriptBraces             ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE    guibg=NONE gui=NONE
hi yamlKey                      ctermfg=192   ctermbg=NONE cterm=NONE guifg=#72aaca guibg=NONE gui=NONE
hi yamlAnchor                   ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fb9a4b guibg=NONE gui=NONE
hi yamlAlias                    ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fb9a4b guibg=NONE gui=NONE
hi yamlDocumentHeader           ctermfg=231  ctermbg=NONE cterm=NONE guifg=#f6f6f6 guibg=NONE gui=NONE
hi cssURL                       ctermfg=74  ctermbg=NONE cterm=NONE guifg=#fb9a4b guibg=NONE gui=NONE
hi cssFunctionName              ctermfg=215  ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi cssColor                     ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b8d977 guibg=NONE gui=NONE
hi cssPseudoClassId             ctermfg=192   ctermbg=NONE cterm=NONE guifg=#72aaca guibg=NONE gui=NONE
hi cssClassName                 ctermfg=192   ctermbg=NONE cterm=NONE guifg=#72aaca guibg=NONE gui=NONE
hi cssValueLength               ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b8d977 guibg=NONE gui=NONE
hi cssCommonAttr                ctermfg=229  ctermbg=NONE cterm=NONE guifg=#b7d877 guibg=NONE gui=NONE
hi cssBraces                    ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE    guibg=NONE gui=NONE
