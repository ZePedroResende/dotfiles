"sd vim-plug autoconfig if not already installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | nested source $MYVIMRC
endif

" startup for vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" looks 
Plug 'lifepillar/vim-solarized8'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" syntax
Plug 'cakebaker/scss-syntax.vim'"
Plug 'slim-template/vim-slim'
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'c']}
Plug 'neovimhaskell/haskell-vim', {'for': ['haskell']}
Plug 'rust-lang/rust.vim', {'for': ['rust']}

" helpers
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

" languages
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'

Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'

Plug 'python-mode/python-mode', { 'branch': 'develop' }

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
call plug#end()

"""""""
set clipboard+=unnamedplus
set completeopt-=preview
set noshowmode
set lazyredraw
set hidden
set ruler
set noswapfile
set ignorecase
set smartcase
set magic
set showmatch
set nobackup
set nowb
set noerrorbells
set expandtab
set updatetime=250

set tabstop=2 
set softtabstop=2
set shiftwidth=2

set number
set relativenumber
set numberwidth=2
set fileformat=unix

set cursorline
set cursorcolumn
set encoding=utf-8

let mapleader = "\<Space>"

set wildignore+=.git,*.swp,*pyc,*pyo,*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.jar,*.zip,*.gem,log/**,tmp/**,coverage/**,rdoc/**,output_*,*.xpi,doc/**

" python special settings
au BufNewFile,BufRead *.py 
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 

:set cmdheight=1

" themes and colors
syntax on
let NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set termguicolors
set background=dark
colorscheme gruvbox
"
""" setup pyhton in nvim
let g:python_host_prog = '/bin/python2'
let g:python3_host_prog = '/bin/python3'

" NERDTREE
nmap <C-L> :NERDTreeToggle<cr>

" fzf.vim
let g:fzf_buffers_jump = 1
nnoremap <C-p> :Files<cr>
nnoremap <Tab> :Buffers<cr>
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()

""" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

""" deoplete
set runtimepath+=~/.local/shared/nvim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup = 1

""" airline
let g:airline#extensions#tabline#enabled = 1

"" ruby"
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

""" cpp
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1

""" rust
let g:rustfmt_autosave = 1
set hidden
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'stable', 'rls'],
    \ }
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
