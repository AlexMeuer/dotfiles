" Show the tab line
" https://github.com/vim-airline/vim-airline#smarter-tab-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

let g:airline_theme = 'gruvbox'

" Always show tabs
set showtabline=2

" Don't show '-- INSERT --', etc
set noshowmode

"function Pomo()
"  ! pomo
"endfunction

"call airline#parts#define_function('pomo', 'Pomo')
"let g:airline_section_y = airline#section#create_right(['ffenc','pomo'])

