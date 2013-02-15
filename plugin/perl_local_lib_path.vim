"==============================================================================
" perl_local_lib_path.vim
" Last Change: 22 Dec 2012
" Maintainer: Yuuki Tsubouchi <yuki.tsubo at gmail.com>
" License: MIT license  {{{
"     Permission is hereby granted, free of charge, to any person obtaining
"     a copy of this software and associated documentation files (the
"     "Software"), to deal in the Software without restriction, including
"     without limitation the rights to use, copy, modify, merge, publish,
"     distribute, sublicense, and/or sell copies of the Software, and to
"     permit persons to whom the Software is furnished to do so, subject to
"     the following conditions:
"
"     The above copyright notice and this permission notice shall be included
"     in  all copies or substantial portions of the Software.
"
"     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
"     OR  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
"     MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
"     IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
"     CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
"     TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
"     SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
" }}}
"==============================================================================

scriptencoding utf-8

let s:save_cpo = &cpo
set cpo&vim

if !exists('g:perl_local_lib_path')
  let g:perl_local_lib_path = ""
endif

function! s:add_paths()
  let g:did_perl_local_lib_path = 1

  call perl_local_lib_path#add_perl_paths(split(g:perl_local_lib_path, ','))
endfunction

command! PerlLocalLibPath call s:add_paths()


let &cpo = s:save_cpo
unlet s:save_cpo
