" Vim color file

set bg=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

so /etc/vim/colors/colorer.vim

let g:colors_name = "mycolors"

hi ClassOBM           ctermfg=Yellow
hi OBMFunc            ctermfg=Brown
hi TrcEntry           ctermfg=LightGreen
hi TrcExit            ctermfg=DarkGreen
hi TrcError           ctermfg=Red
hi TrcTime            ctermfg=DarkGray
" hi TrcFilePos         ctermfg=DarkGray
hi TrcFileName        cterm=underline
hi TrcInfo            ctermfg=White
hi FileInfo           ctermfg=Blue
hi Separator          ctermfg=Blue
hi FilePosition       ctermfg=DarkBlue

hi MatchParen         term=reverse ctermfg=Yellow ctermbg=6 guibg=DarkCyan

hi TabLine          term=underline cterm=bold,underline ctermfg=7 ctermbg=Blue gui=underline guibg=DarkGrey
hi TabLineFill      term=underline cterm=bold,underline ctermbg=Blue gui=underline
hi TabLineSel       term=bold cterm=bold,underline ctermbg=Black gui=bold

hi JLogTime            ctermfg=DarkGray
hi JLogError           ctermfg=Red cterm=bold
hi JLogFatal           ctermfg=Red cterm=bold
hi JLogWarn            ctermfg=DarkRed
hi JLogInfo            ctermfg=White cterm=bold
hi JLogClass           ctermfg=LightGray cterm=underline
hi JLogEntry           ctermfg=LightGreen
hi JLogExit            ctermfg=DarkGreen
hi JLogJava            ctermfg=LightBlue

