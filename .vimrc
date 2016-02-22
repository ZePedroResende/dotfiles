filetype  plugin indent on 


set nocompatible                                           
set t_Co=256
call pathogen#infect() 
set background=dark
syntax enable
filetype plugin on
set background=dark
call togglebg#map("<F5>")

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

set guifont=Monaco:h12
let g:NERDTreeWinPos = "right"
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar


set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab




augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END


set number 
set autochdir
set backspace=indent,eol,start
set foldenable
set hidden
set incsearch
set laststatus=2
set ruler
set switchbuf=useopen,usetab
set tags=./tags,tags;/
set wildmenu
set makeprg=make\ -C\ ../build\ -j9
nnoremap <F4> :make!<cr>
map <C-n> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set laststatus=2             "Always show the status bar and not on splited like before(this was the main problem)

"to fix the font and lot of strange characters and colors
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
