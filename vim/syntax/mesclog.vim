" Vim syntax file for MESc log files

syn match		LogRow				display "^[ \t]*<[ 0-9\.\:\-]*>[ \t]\[[A-Z]*\][ \t]<[a-zA-Z0-9]*>[ \t].*" contains=LogTime,@LogType,MEScProject,MEScClassText,MEScStarted,MEScFinished,MEScMeasStarted,MEScMeasFinished
syn match		LogTime				display contained "^[ \t]*<[ 0-9\.\:\-]*>" nextgroup=LogType
syn cluster		LogType				contains=LogTrace,LogDebug,LogInfo,LogTitle,LogWarning,LogError,LogFatal
syn match		LogTrace			display contained "[ \t]\[TRACE\][ \t]"hs=e-7,he=e-1 nextgroup=MEScProject
syn match		LogDebug			display contained "[ \t]\[DEBUG\][ \t]"hs=e-7,he=e-1 nextgroup=MEScProject
syn match		LogInfo				display contained "[ \t]\[INFO\][ \t]"hs=e-6,he=e-1 nextgroup=MEScProject
syn match		LogTitle			display contained "[ \t]\[TITLE\][ \t]"hs=e-7,he=e-1 nextgroup=MEScProject
syn match		LogWarning			display contained "[ \t]\[WARNING\][ \t]"hs=e-9,he=e-1 nextgroup=MEScProject
syn match		LogError			display contained "[ \t]\[ERROR\][ \t]"hs=e-7,he=e-1 nextgroup=MEScProject
syn match		LogFatal			display contained "[ \t]\[FATAL\][ \t]"hs=e-7,he=e-1 nextgroup=MEScProject
syn match		MEScProject			display contained "<[a-zA-Z0-9]*>[ \t]" nextgroup=MEScClassText
syn match		MEScClassText		display contained "[a-zA-Z0-9]*::[^\(]*():.*" contains=MEScClass,MEScFunc
syn match		MEScClass			display contained "[a-zA-Z0-9]*::" nextgroup=MEScFunc
syn match		MEScFunc			display contained "[^:\(]*()"
syn match		MEScStarted			display contained "MESc GUI started\..*"
syn match		MEScFinished		display contained "MESc Qt GUI exited.*"
syn match		MEScMeasStarted		display contained "sigMeasureRunning()"
syn match		MEScMeasFinished	display contained "sigMeasureDone()"

"command! -nargs=0 MakeRCTraceFolding :call MakeRCTraceFoldingFunc()
"function! MakeRCTraceFoldingFunc()
"  syn region      TrcEntryExit start=/^[ \t]*[0-9\.\:\-]*[ \t]ENTRY[ \t]/ end=/^[ \t]*[0-9\.\:\-]*[ \t]EXIT[ \t]/ contains=TrcEntryExit,MEScClass,LogRowStart,TrcFilePos fold
"  "syn sync fromstart
"  "syn sync maxlines=100
"  set foldlevel=8
"  set foldmethod=syntax
"  set foldcolumn=6
"endfunction

"set mouse=n
"set foldmethod=indent
"set foldcolumn=3

let b:current_syntax = "mesclog"
