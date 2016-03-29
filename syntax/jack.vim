" Vim syntax file
" Language: Jack
" (http://www.nand2tetris.org/lectures/PDF/lecture%2009%20high%20level%20language.pdf)
" Maintainer: Fabricator
" Latest Revision: 21 Jan 2016
"
if exists("b:current_syntax")
    finish
endif

syn match jackComment "//.*$"
syn region jackComment start="/\*\*" end="\*/"

syn keyword jackType class constructor method function
syn keyword jackType int boolean char void
syn keyword jackType var static field
syn keyword jackStatement let do if else while return
syn keyword jackConstant true false null
syn keyword jackConstant this
syn region jackString start='"' end='"'
syn region jackString start="'" end="'"

let b:current_syntax = "jack"
hi def link jackType Type
hi def link jackStatement Statement
hi def link jackConstant Constant
hi def link jackString Constant
hi def link jackComment Comment
