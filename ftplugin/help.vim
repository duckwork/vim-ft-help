" Helpfile-related cool guy stuff.
" Drop-in replacement for the helpfile included with Vim.
" (So there's some copypasta.)
" by Case Duckworth (mahatman2) for VIM 7.04

" Said copypasta
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

let s:cpo_save = &cpo
set cpo&vim

let s:undo_ftplugin = []

setlocal formatoptions+=tcroql textwidth=78
if has("conceal")
  setlocal cole=2 cocu=nc
endif
if has("syntax")
  setlocal nospell
endif
call add(s:undo_ftplugin, "setl fo< tw< cole< cocu< spell<")

if !hasmapto('<C-]>')
  nnoremap <buffer> <CR> <C-]>
endif
if !hasmapto('<C-t>')
  nnoremap <buffer> <BS> <C-t>
endif
nnoremap <buffer> q :q<CR>

let &cpo = s:cpo_save
unlet s:cpo_save
