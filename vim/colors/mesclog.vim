" Vim color file for MESc log files

hi clear

"set background=dark

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "mesclog"

hi LogTime				ctermfg=Gray			guifg=#aaaaaa

hi LogTrace				ctermfg=Black			guifg=#aaaaaa
hi LogDebug				ctermfg=Black			guifg=#555555
hi LogInfo				ctermfg=Black			guifg=#555555
hi LogTitle				ctermfg=Green			guifg=#11aa11
hi LogWarning			ctermfg=Yellow			guifg=#eeaa00
hi LogError				ctermfg=Red				guifg=#ff0000
hi LogFatal				ctermfg=Red				guifg=#880000

hi MEScProject			ctermfg=Brown			guifg=#003080

hi MEScClass			ctermfg=Brown			guifg=#0055cc
hi MEScFunc				ctermfg=Brown			guifg=#1a90ff

hi MEScStarted									guifg=#000000				guibg=#ffff00
hi MEScFinished									guifg=#000000				guibg=#aaaa00
hi MEScMeasStarted															guibg=#00ff00
hi MEScMeasFinished															guibg=#008800
