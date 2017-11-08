" Vim syntax file

syn match       OBMFunc         display contained "::[^\(]*()"
syn match       ClassOBM        display "[ \t]OBM_[<>a-zA-Z0-9]*::[^\(]*()" contains=OBMFunc
syn match       TrcRowStart     display "^[ \t]*[0-9\.\:\-]*[ \t][A-Z]*[ \t]" contains=TrcTime,@TrcType
syn cluster     TrcType         contains=TrcEntry,TrcExit,TrcError
syn match       TrcEntry        display contained "[ \t]ENTRY[ \t]"hs=e-5,he=e-1
syn match       TrcExit         display contained "[ \t]EXIT[ \t]"hs=e-4,he=e-1
syn match       TrcError        display contained "[ \t]ERROR[ \t]"hs=e-5,he=e-1
syn match       TrcTime         display contained "^[ \t]*[0-9\.\:\-]*"
syn match       TrcFilePos      display "\[[a-z][^\:]*:[0-9]*\]$" contains=TrcFileName
syn match       TrcFileName     display contained "[a-z][^\:\[\]]*"
"syn match       TrcInfo         display "^[ \t]*[^ \t]*[ \t]INFORMATION[ \t]"hs=e-11,he=e-1
"syn match       FileInfo        display "\[obm_[a-z0-9]*\.[chp]*:[0-9]*\]$" contains=FilePosition
"syn match       FilePosition    display contained "obm_[a-z0-9]*\.[chp]*:[0-9]*" contains=Separator
"syn match       Separator       display contained ":"

command! -nargs=0 MakeRCTraceFolding :call MakeRCTraceFoldingFunc()
function! MakeRCTraceFoldingFunc()
  syn region      TrcEntryExit start=/^[ \t]*[0-9\.\:\-]*[ \t]ENTRY[ \t]/ end=/^[ \t]*[0-9\.\:\-]*[ \t]EXIT[ \t]/ contains=TrcEntryExit,ClassOBM,TrcRowStart,TrcFilePos fold
  "syn sync fromstart
  "syn sync maxlines=100
  set foldlevel=8
  set foldmethod=syntax
  set foldcolumn=6
endfunction

set mouse=n
set foldmethod=indent
set foldcolumn=3

let b:current_syntax = "rctrace"

