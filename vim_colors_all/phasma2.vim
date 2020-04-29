" Vim color file - phasma
" Created by Vestigia Solutions somehow forked mustang.vim
" http://www.vestigiasolutions.com
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "phasma2"

hi CursorLine   cterm=NONE ctermbg=black guibg=black
hi IncSearch    ctermbg=154 guibg=#afff00 ctermfg=DarkGray guifg=DarkGray
hi Search       ctermbg=154 guibg=#afff00 ctermfg=DarkGray guifg=DarkGray
hi WildMenu     guifg=#000000 guibg=#B1D631 guisp=#dca3a3 gui=NONE ctermfg=NONE ctermbg=181 cterm=NONE
hi Normal 	guifg=#e2e2e5 guibg=#202020 gui=NONE ctermfg=253 ctermbg=234
hi NonText 	guifg=#808080 guibg=#303030 gui=NONE ctermfg=244 ctermbg=235
hi LineNr 	guifg=#808080 guibg=#000000 gui=NONE ctermfg=244 ctermbg=232
hi VertSplit 	guifg=#444444 guibg=#444444 gui=NONE ctermfg=238 ctermbg=238
hi ColorColumn  ctermbg=236   guibg=#303030 ctermfg=NONE guifg=NONE
"hi SignColumn -- no settings --
hi SpecialComment guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
hi Typedef        guifg=#ffffff guibg=NONE guisp=NONE gui=bold,underline ctermfg=15 ctermbg=NONE cterm=bold,underline
hi Title          guifg=#ffffff guibg=#333333 guisp=#333333 gui=bold ctermfg=15 ctermbg=236 cterm=bold
hi Folded         guifg=#dca3a3 guibg=#333333 guisp=#333333 gui=NONE ctermfg=181 ctermbg=236 cterm=NONE
hi PreCondit      guifg=#dfaf8f guibg=NONE guisp=NONE gui=bold ctermfg=180 ctermbg=NONE cterm=bold
hi Include        guifg=#f18c96 guibg=NONE guisp=NONE gui=bold ctermfg=210 ctermbg=NONE cterm=bold
"hi TabLineSel -- no settings --
hi StatusLineNC     guifg=#faf4c6 guibg=#3c414c gui=NONE ctermfg=254 ctermbg=4
hi StatusLine   guifg=#333333 guibg=#cccccc guisp=#cccccc gui=NONE ctermfg=236 ctermbg=252 cterm=NONE
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
hi DiffText       guifg=#ffffff guibg=#1f1f1f guisp=#1f1f1f gui=bold ctermfg=15 ctermbg=234 cterm=bold
hi ErrorMsg       guifg=darkgray guibg=#5F5F5F guisp=#00c0cf gui=bold ctermfg=darkgray ctermbg=59 cterm=bold
"hi Ignore -- no settings --
hi Debug          guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
hi PMenuSbar      guifg=NONE guibg=#464646 guisp=#464646 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi Identifier     guifg=#c4eb2a guibg=NONE guisp=NONE gui=bold ctermfg=148 ctermbg=NONE cterm=bold
hi SpecialChar    guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
hi Conditional    guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi StorageClass   guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Todo           guifg=#ffffff guibg=#000000 guisp=#000000 gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Special        guifg=#7f7f7f guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Label          guifg=#8fffff guibg=NONE guisp=NONE gui=underline ctermfg=123 ctermbg=NONE cterm=underline
"hi CTagsImport -- no settings --
hi PMenuSel       guifg=#1f1f1f guibg=#f2eeea guisp=#f2eeea gui=NONE ctermfg=234 ctermbg=255 cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter      guifg=#8f8f8f guibg=NONE guisp=NONE gui=NONE ctermfg=245 ctermbg=NONE cterm=NONE
hi Statement      guifg=#87d7ff guibg=NONE guisp=NONE gui=bold ctermfg=117 ctermbg=NONE cterm=bold
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment       guifg=#7f7f7f guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Character     guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
hi Float         guifg=#9c93b3 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
hi Number        guifg=#fce94f ctermfg=Yellow gui=bold cterm=bold
hi Boolean       guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
hi Operator      guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
hi Question     guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi WarningMsg   guifg=darkgray guibg=#333333 guisp=#333333 gui=bold ctermfg=darkgray ctermbg=236 cterm=bold
hi VisualNOS    guifg=#faf4c6 guibg=#3c414c gui=NONE ctermfg=254 ctermbg=4
hi DiffDelete   guifg=#333333 guibg=#464646 guisp=#464646 gui=NONE ctermfg=236 ctermbg=238 cterm=NONE
hi DiffChange   guifg=NONE guibg=#333333 guisp=#333333 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi ModeMsg      guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
"hi CursorColumn -- no settings --
hi Define       guifg=#ffcfaf guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
hi Function     guifg=#ffff8f guibg=NONE guisp=NONE gui=NONE ctermfg=228 ctermbg=NONE cterm=NONE
hi FoldColumn   guifg=#dca3a3 guibg=#464646 guisp=#464646 gui=NONE ctermfg=181 ctermbg=238 cterm=NONE
hi PreProc      guifg=#5da0d4 guibg=NONE guisp=NONE gui=bold ctermfg=74 ctermbg=NONE cterm=bold
"hi EnumerationName -- no settings --
hi Visual   guifg=#faf4c6 guibg=#3c414c gui=NONE ctermfg=254 ctermbg=4
hi MoreMsg  guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
"hi SpellCap -- no settings --
hi Exception    guifg=#8fffff guibg=NONE guisp=NONE gui=underline ctermfg=123 ctermbg=NONE cterm=underline
hi Keyword      guifg=#3ea3f0 guibg=NONE guisp=NONE gui=bold ctermfg=75 ctermbg=NONE cterm=bold
hi Type         guifg=#87d7ff guibg=NONE guisp=NONE gui=bold ctermfg=117 ctermbg=NONE cterm=bold
hi Cursor 	guifg=NONE    guibg=#626262 gui=NONE ctermbg=241
"hi SpellLocal -- no settings --
hi Error        guifg=darkgray guibg=#c15f5f guisp=#f2eeea gui=bold ctermfg=darkgray cterm=bold
hi PMenu        guifg=#ed9a42 guibg=#666666 guisp=#666666 gui=NONE ctermfg=215 ctermbg=241 cterm=NONE
hi SpecialKey   guifg=#7e7e7e guibg=NONE guisp=NONE gui=NONE ctermfg=8 ctermbg=NONE cterm=NONE
hi Constant     guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
"hi DefinedName -- no settings --
hi Tag          guifg=#dca3a3 guibg=NONE guisp=NONE gui=bold ctermfg=181 ctermbg=NONE cterm=bold
hi String       guifg=#fce94f ctermfg=Yellow gui=bold cterm=bold
hi PMenuThumb   guifg=NONE guibg=#7f7f7f guisp=#7f7f7f gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
hi MatchParen   guifg=darkgray ctermfg=darkgray cterm=bold gui=bold
"hi LocalVariable -- no settings --
hi Repeat      guifg=#87d7ff guibg=NONE guisp=NONE gui=bold ctermfg=117 ctermbg=NONE cterm=bold
hi SpellBad    guifg=darkgray ctermfg=darkgray cterm=bold gui=bold
"hi CTagsClass -- no settings --
hi Directory guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Structure guifg=#ffffff guibg=NONE guisp=NONE gui=bold,underline ctermfg=15 ctermbg=NONE cterm=bold,underline
hi Macro     guifg=#ffcfaf guibg=NONE guisp=NONE gui=bold ctermfg=223 ctermbg=NONE cterm=bold
"hi Underlined -- no settings --
hi DiffAdd   guifg=NONE guibg=#613c46 guisp=#613c46 gui=NONE ctermfg=NONE ctermbg=95 cterm=NONE
"hi TabLine -- no settings --
hi cursorim guifg=#1F1F1F guibg=#FFEE68 guisp=#FFEE68 gui=NONE ctermfg=234 ctermbg=227 cterm=NONE
"hi clear -- no settings --
hi mbenormal         guifg=#ffebd4 guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=230 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#eb9dff guibg=#404040 guisp=#404040 gui=NONE ctermfg=219 ctermbg=238 cterm=NONE
hi doxygenspecial    guifg=#ffd293 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged        guifg=#ffffff guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=15 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#ffffff guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=15 ctermbg=60 cterm=NONE
hi doxygenparam      guifg=#ffd293 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#ffd293 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev      guifg=#ffd293 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#eb9dff guibg=#404040 guisp=#404040 gui=NONE ctermfg=219 ctermbg=238 cterm=NONE
hi cformat          guifg=#eb9dff guibg=#404040 guisp=#404040 gui=NONE ctermfg=219 ctermbg=238 cterm=NONE
hi lcursor          guifg=#ffffff guibg=#8fff8b guisp=#8fff8b gui=NONE ctermfg=15 ctermbg=120 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ff8d13 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi taglisttagname       guifg=#8993ff guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief         guifg=#ffab62 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal     guifg=#fffff6 guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=230 ctermbg=60 cterm=NONE
hi user2                guifg=#b1b1ff guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=147 ctermbg=60 cterm=NONE
hi user1                guifg=#00ff8c guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ff8d13 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi doxygencomment       guifg=#ffb428 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi cspecialcharacter    guifg=#eb9dff guibg=#404040 guisp=#404040 gui=NONE ctermfg=219 ctermbg=238 cterm=NONE
hi pythonimport         guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi pythonexception      guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi pythonoperator       guifg=#c7e0ff guibg=NONE guisp=NONE gui=NONE ctermfg=153 ctermbg=NONE cterm=NONE
hi pythonexclass        guifg=#00ff00 guibg=NONE guisp=NONE gui=NONE ctermfg=10 ctermbg=NONE cterm=NONE
hi stringdelimiter      guifg=#556633 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
hi rubyregexp           guifg=#dd0093 guibg=NONE guisp=NONE gui=NONE ctermfg=162 ctermbg=NONE cterm=NONE
hi constant             guifg=#cf6a4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi rubyinstancevariable guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi rubyclass            guifg=#447799 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
hi identifier           guifg=#c6b6ee guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
hi comment              guifg=#888888 guibg=NONE guisp=NONE gui=italic ctermfg=102 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter  guifg=#540063 guibg=NONE guisp=NONE gui=NONE ctermfg=53 ctermbg=NONE cterm=NONE
hi rubyregexpspecial    guifg=#a40073 guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#de5577 guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
hi function         guifg=#fad07a guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi directory        guifg=#dad085 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi rubysymbol       guifg=#7697d6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubycontrol      guifg=#7597c6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi rubyidentifier   guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi condtional       guifg=#8fffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
hi htmlitalic       guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic  guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic           guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlunderlineitalic      guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlbold                 guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline        guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlunderline            guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=underline ctermfg=252 ctermbg=234 cterm=underline
"hi default -- no settings --
hi pythonbuiltin    guifg=#e0f6ff guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
"hi phpstringdouble  guifg=#f6f6ff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi htmltagname      guifg=#f6f6ff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
"hi javascriptstrings guifg=#f6f6ff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
"hi htmlstring       guifg=#f6f6ff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
"hi phpstringsingle  guifg=#f6f6ff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
