 " Leader Key Maps 

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                        , 'Open Init' ]
let g:which_key_map[';'] = [ ':Commands'                          , 'Commands' ]
let g:which_key_map['e'] = [ ':NERDTreeFind'                     , 'NERDTreeFind' ]
let g:which_key_map['i'] = [ ':BLines'                            , 'Search Word In' ]
let g:which_key_map['p'] = [ ':FloatermNew --wintype=normal --height=6'       , 'Terminal' ]
let g:which_key_map['h'] = [ '<C-W>s'                             , 'Split Horizontal']
let g:which_key_map['f'] = [ ':Files'                             , 'Search Files']
let g:which_key_map['q'] = [ 'q'                                  , 'Quit' ]
let g:which_key_map['o'] = [ 'Rg'                                  , 'Search Word Out' ]
let g:which_key_map['w'] = [ ':q!'                                  , 'Quit w/o changes' ]
let g:which_key_map['c'] = [ 'wq'                                 , 'Quit w/ changes' ]
let g:which_key_map['r'] = [ ':FloatermNew lf'                    , 'LF' ]
let g:which_key_map['v'] = [ '<C-W>v'                             , 'Split Vertical']
let g:which_key_map['s'] = [ 'w'                                  , 'Save changes w/o quit']


call which_key#register('<Space>', "g:which_key_map")