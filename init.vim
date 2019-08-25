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
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim'

" syntax
Plug 'cakebaker/scss-syntax.vim'"
Plug 'slim-template/vim-slim'
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'c']}
Plug 'neovimhaskell/haskell-vim', {'for': ['haskell']}
Plug 'rust-lang/rust.vim', {'for': ['rust']}
Plug 'rhysd/vim-clang-format', {'for': ['cpp', 'c']}

" helpers
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'

" Hardeners 
Plug 'takac/vim-hardtime'


" IDE
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'for': ['rust','ruby','python', 'elixir', 'javascript'], 'do': ':UpdateRemotePlugins' }
Plug 'Valloric/YouCompleteMe', {'for': ['cpp', 'c']} 
Plug 'SirVer/ultisnips' 
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

" languages
Plug 'slashmili/alchemist.vim', { 'for': ['elixir'], 'do': ':UpdateRemotePlugins' }
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir'], 'do': ':UpdateRemotePlugins' }
Plug 'elixir-editors/vim-elixir', { 'for': ['elixir'], 'do': ':UpdateRemotePlugins' }
Plug 'mhinz/vim-mix-format', { 'for': ['elixir'], 'do': ':UpdateRemotePlugins' }

Plug 'tpope/vim-rails'
Plug 'tpope/vim-dispatch'
Plug 'vim-ruby/vim-ruby'

Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'

Plug 'python-mode/python-mode', { 'branch': 'develop' }

Plug 'pangloss/vim-javascript'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'lervag/vimtex'
Plug 'lionawurscht/deoplete-biblatex'
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
set colorcolumn=81
set encoding=utf-8
set rulerformat=%55(%1*%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)%*

let mapleader = "\<Space>"

set wildignore+=.git,*.beam,*.swp,*pyc,*pyo,*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.jar,*.zip,*.gem,log/**,tmp/**,coverage/**,rdoc/**,output_*,*.xpi,doc/**

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" python special settings
let g:pymode_python = 'python3'
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

set cmdheight=1

" themes and colors
syntax on
let NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set termguicolors

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set background=dark
"colorscheme gruvbox
colorscheme jellybeans
"set g:airline_theme='jellybeans'
"
""" setup pyhton in nvim
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python'

" NERDTREE
nmap <Leader>l :NERDTreeToggle<cr>

" fzf.vim
let g:fzf_buffers_jump = 1
nnoremap <Leader>p :Files<cr>
nnoremap <Tab> :Buffers<cr>
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
command! -bang -nargs=* GGrep call fzf#vim#grep("fd --type f --hidden --follow --exclude .git | git grep --line-number ".shellescape(<q-args>), 0, <bang>0)
nnoremap <Leader>p :ProjectFiles<cr>
map <Leader>p :ProjectFiles<cr>
map <Leader>/ :GGrep<cr>
nnoremap <Tab> :Buffers<cr>

""" ultisnips
let g:UltiSnipsExpandTrigger="<a-cr>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

""" deoplete
set runtimepath+=~/.local/shared/nvim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
let g:SuperTabDefaultCompletionType = "<c-n>"

""" airline
let g:airline#extensions#tabline#enabled = 1

"" ruby"
autocmd FileType ruby setlocal omnifunc=LanguageClient#complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

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
    \ 'go': ['go-langserver'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'ruby': ['tcp://localhost:7658']
    \ }
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

"""ale
let g:ale_cpp_clang_options = '-std=c++17 -Wall -stdlib=libc++'
let g:ale_cpp_clangcheck_options = '-- -Wall -std=c++17 -x c++'
let g:ale_linters = {
\   'cpp': ['clangtidy','clang-format', 'cppcheck', 'g++','clangd'],
\   'latex' : ['texlab'],
\   'elixir' : ['credo', 'mix'],
\   'ruby' : ['sorbet'],
\ 'javascript': ['eslint'],
\ 'jsx': ['eslint'],
\}
let g:ale_fix_on_save = 1

"let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --prose-wrap always'
let g:ale_javascript_prettier_use_local_config = 1

let g:ale_fixers = {
      \   'markdown': ['prettier'],
      \   'javascript': ['prettier'],
      \   'typescript': ['prettier'],
      \   'javascript.jsx': ['prettier'],
      \   'elixir': ['mix_format'],
      \   'css': ['stylelint'],
      \   'scss': ['stylelint'],
      \   'terraform': ['DoTfFMT'],
      \   'ruby': ['rubocop'],
\}

let g:clang_format#auto_format=1

""YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/resende/.ycm_extra_conf.py'
""Latex
let g:latex_view_general_viewer = "zathura"
let g:vimtex_view_method = "zathura"


let g:tex_flavor = "latex"
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode = 2
if has('nvim')
    let g:vimtex_compiler_progname = 'nvr'
endif

" One of the neosnippet plugins will conceal symbols in LaTeX which is
" confusing
let g:tex_conceal = ""

" Can hide specifc warning messages from the quickfix window
" Quickfix with Neovim is broken or something
" https://github.com/lervag/vimtex/issues/773
let g:vimtex_quickfix_latexlog = {
            \ 'default' : 1,
            \ 'fix_paths' : 0,
            \ 'general' : 1,
            \ 'references' : 1,
            \ 'overfull' : 1,
            \ 'underfull' : 1,
            \ 'font' : 1,
            \ 'packages' : {
            \   'default' : 1,
            \   'natbib' : 1,
            \   'biblatex' : 1,
            \   'babel' : 1,
            \   'hyperref' : 1,
            \   'scrreprt' : 1,
            \   'fixltx2e' : 1,
            \   'titlesec' : 1,
            \ },
\}

"hardtime
let g:hardtime_default_on = 1
let g:hardtime_timeout = 2000
cnoremap kj <C-C>
