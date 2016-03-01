" Helpfile-related cool guy stuff.
" by Case Duckworth (mahatman2) for VIM 7.04

let s:cpo_save = &cpo
set cpo&vim

setlocal nospell

if !hasmapto('<C-]>')
  nnoremap <buffer> <CR> <C-]>
  nnoremap <buffer> h :help<Space>
endif
if !hasmapto('<C-t>')
  nnoremap <buffer> <BS> <C-t>
endif
nnoremap <buffer> q :q<CR>

let &cpo = s:cpo_save
unlet s:cpo_save
