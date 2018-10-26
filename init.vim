"sd vim-plug autoconfig if not already installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | nested source $MYVIMRC
endif

" startup for vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Completions and snippets
Plug 'cakebaker/scss-syntax.vim'"
Plug 'Yggdroot/indentLine'
Plug 'hdima/python-syntax', {'for': 'python'}
Plug 'python-mode/python-mode', {'for': 'python'}
Plug 'jiangmiao/auto-pairs'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neco-vim', { 'for': 'vim' }
Plug 'davidhalter/jedi', {'for': 'python'}
"Plug 'zchee/deoplete-jedi', { 'for': 'python' }
"Plug 'zchee/deoplete-go', { 'do': 'make', 'for': 'go' }
"Plug 'sebastianmarkow/deoplete-rust', {'for': ' rust '}
Plug 'slim-template/vim-slim'
Plug 'slashmili/alchemist.vim'
"Plug 'rust-lang/rust.vim', {'for': 'rust' }
"Plug 'timonv/vim-cargo', { 'for': 'rust' }
"Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
"Plug 'Quramy/tsuquyomi', {'for': 'typescript' }
Plug 'elixir-lang/vim-elixir'
Plug 'Shougo/neosnippet' | Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'lifepillar/vim-solarized8'

" Helpers
Plug 'Shougo/unite.vim'
Plug 'adimit/prolog.vim',{'for': 'prolog'}
"Plug 'Shougo/denite.nvim'
"Plug 'Shougo/vimproc.vim', { 'do': 'make' }
"Plug 'haya14busa/incsearch.vim'
"Plug 'brooth/far.vim'
"Plug 'tpope/vim-surround'
"Plug 'vim-scripts/matchit.zip'
"Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'edkolev/promptline.vim'
"Plug 'xolox/vim-misc' | Plug 'xolox/vim-session'
"Plug 'kassio/neoterm'
"Plug 'hkupty/nvimux'

" IDE
Plug 'scrooloose/nerdtree'
Plug 'docunext/closetag.vim'
Plug 'Shougo/vimfiler.vim' | Plug 'Shougo/unite.vim'
"Plug 'neomake/neomake'
"Plug 'Shougo/denite.nvim'
"Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'vim-scripts/gitignore'
Plug 'majutsushi/tagbar'
"Plug 'vim-scripts/indentpython.vim'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
"Plug 'airblade/vim-gitgutter'
Plug 'miyakogi/seiya.vim'

" Syntax helpers
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'Quramy/vim-js-pretty-template', {'for': ['javascript','typescript']}
Plug 'Quramy/tsuquyomi'
Plug 'pearofducks/ansible-vim', { 'for': 'ansible' }
Plug 'freitass/todo.txt-vim', { 'for': 'todo.txt' }
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
"Plug 'fishbullet/deoplete-ruby'
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-pandoc/vim-rmarkdown', {'for': 'rmarkdown'}
Plug  'vim-pandoc/vim-pandoc', {'for': ['latex','tex','rmarkdown','markdown']}
Plug 'vim-pandoc/vim-pandoc-syntax', {'for': ['latex','tex','rmarkdown','markdown']}
call plug#end()

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

set whichwrap+=<,>,h,l

let mapleader = "\<Space>"

set wildignore+=.git,*.swp,*pyc,*pyo,*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.jar,*.zip,*.gem,log/**,tmp/**,coverage/**,rdoc/**,output_*,*.xpi,doc/**

" python special settings
au BufNewFile,BufRead *.py set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79

nnoremap <silent> <A-right> :bn<CR>
nnoremap <silent> <A-left> :bp<CR>

" neovim terminal
tnoremap <Esc> <C-\><C-n>

" conceal markers
if has('conceal')
  set conceallevel=2
endif


" TagBar
nmap <C-t> :TagbarToggle<CR>

" vim-airline settings
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

" themes and colors
let NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set termguicolors
set background=light
colorscheme solarized8
let g:seiya_auto_enable=1
let g:seiya_target_groups = ['guibg']

" unite/denite vim
nnoremap <leader>f :Denite file_rec<CR>
let g:unite_source_grep_command = 'ack-grep'
let g:unite_source_grep_default_opts ='-i --no-heading --no-color -k -H'
let g:unite_source_grep_recursive_opt = ''

" vimfiler
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_marked_file_icon = '✓'
let g:vimfiler_readonly_file_icon = '✗'
let g:vimfiler_file_icon = ''
let g:vimfiler_time_format = '%m-%d-%y %H:%M:%S'
let g:vimfiler_expand_jump_to_first_child = 0
let g:vimfiler_quick_look_command = 'gloobus-preview'

call vimfiler#custom#profile('default', 'context', {
            \ 'direction' : 'rightbelow',
            \ 'force_quit': 1,
            \ 'safe': 0
            \ })

map <C-f> :VimFilerExplorer -winwidth=30 -toggle -no-quit -simple<CR>

" fzf.vim
nmap <C-L> :NERDTree<cr>
nnoremap <C-p> :Files<cr>
nnoremap <Tab> :Buffers<cr>

" session management
let g:session_autosave = 'no'

" NeoTerm
let g:neoterm_position = 'vertical'
let g:neoterm_automap_keys = ',tt'
nnoremap <silent> ,th :call neoterm#close()<cr>
nnoremap <silent> ,tl :call neoterm#clear()<cr>
nnoremap <silent> ,tc :call neoterm#kill()<cr>

" nvr
let $VISUAL = 'nvr -cc split --remote-wait'

" deoplete + neosnippet + autopairs changes
let g:AutoPairsMapCR=0
"let g:deoplete#auto_complete_start_length = 1
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1
imap <expr><TAB> pumvisible() ? "\<C-n>" : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>")
imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
"imap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>\<Plug>AutoPairsReturn"
" quick configure to vim config
nmap <silent> ;v :next $MYVIMRC<CR>
nmap <silent> <BS> :nohlsearch<CR>

augroup neovim
  autocmd!
  autocmd FileType vimfiler set nonumber | set norelativenumber
  autocmd Filetype * if &ft!='vimfiler' | set relativenumber | set number | endif
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
  autocmd StdinReadPre * let s:std_in=1
  autocmd BufWritePre * %s/\s\+$//e
  "autocmd BufWritePost * Neomake
  autocmd TermClose * bw!
  autocmd BufWinEnter,WinEnter term://* startinsert
  autocmd BufLeave term://* stopinsert
  autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

let g:ycm_python_binary_path = '/usr/local/bin/python3.7'
let g:ycm_server_python_interpreter = '/usr/local/bin/python3.7'
let g:ycm_python_binary_path = '/usr/local/bin/python3.7'
let g:cpp_class_scope_highlight = 1
let g:ycm_confirm_extra_conf = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let python_highlight_all = 1

set cursorline
set cursorcolumn
set encoding=utf-8
let g:pymode_folding = 0
let g:pymode_python = 'python3'
set nofoldenable
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3.7'
