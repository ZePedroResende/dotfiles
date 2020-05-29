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
Plug 'bluz71/vim-moonfly-colors'
Plug 'sheerun/vim-wombat-scheme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nanotech/jellybeans.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'fcpg/vim-fahrenheit'
Plug 'KKPMW/moonshine-vim'
Plug 'Lokaltog/vim-distinguished'

" syntax
Plug 'cakebaker/scss-syntax.vim'"
Plug 'slim-template/vim-slim'
Plug 'octol/vim-cpp-enhanced-highlight', {'for': ['cpp', 'c']}
Plug 'neovimhaskell/haskell-vim', {'for': ['haskell']}
Plug 'rust-lang/rust.vim', {'for': ['rust']}
Plug 'rhysd/vim-clang-format', {'for': ['cpp', 'c']}
Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }
Plug 'Shougo/vimproc.vim', { 'for': ['typescript'], 'do': 'make' }
Plug 'Quramy/tsuquyomi', { 'for': ['typescript'] }
Plug 'aklt/plantuml-syntax'

" helpers
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rhysd/vim-grammarous'

" Hardeners
Plug 'takac/vim-hardtime'


" IDE
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Shougo/deoplete.nvim', { 'for': ['cpp','c','rust','ruby','python', 'elixir', 'typescript', 'javascript', 'sass', 'css', 'scsss', 'go'], 'do': ':UpdateRemotePlugins' }
"Plug 'Valloric/YouCompleteMe', {'for': ['cpp', 'c']}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/vim-slumlord'

" languages
Plug 'slashmili/alchemist.vim', { 'for': ['elixir'], 'do': ':UpdateRemotePlugins' }
Plug 'elixir-lang/vim-elixir', { 'for': ['elixir'], 'do': ':UpdateRemotePlugins' }
Plug 'elixir-editors/vim-elixir', { 'for': ['elixir'], 'do': ':UpdateRemotePlugins' }
Plug 'mhinz/vim-mix-format', { 'for': ['elixir'], 'do': ':UpdateRemotePlugins' }
Plug 'fatih/vim-go'
"", { 'do': ':GoUpdateBinaries' }

Plug 'tpope/vim-rails'
Plug 'tpope/vim-dispatch'
Plug 'vim-ruby/vim-ruby'
Plug 'hallison/vim-ruby-sinatra'

Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'

Plug 'python-mode/python-mode', { 'branch': 'develop' }

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'luochen1990/rainbow'
Plug 'jparise/vim-graphql'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
"Plug 'autozimu/LanguageClient-neovim', {
"      \ 'branch': 'next',
"      \ 'do': 'bash install.sh',
"      \ }

Plug 'lervag/vimtex'
"Plug 'lionawurscht/deoplete-biblatex'
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
set encoding=UTF-8
set rulerformat=%55(%1*%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)%*

set list
set listchars=""
set list lcs=tab:\|\
set listchars+=trail:•
set listchars+=nbsp:•

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
      \ set shiftwidth=2 |
      \ set expandtab |
      \ set autoindent |
      \ set fileformat=unix |

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
colorscheme moonfly
"colorscheme fahrenheit
"
""" setup pyhton in nvim
let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

" NERDTREE
nmap <Leader>l :NERDTreeToggle<cr>

" fzf.vim
let g:fzf_buffers_jump = 1
nnoremap <Tab> :Buffers<cr>
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
command! -bang -nargs=* GGrep call fzf#vim#grep("fd --type f --hidden --follow --exclude .git | git grep --line-number ".shellescape(<q-args>), 0, <bang>0)
nnoremap <Leader>p :ProjectFiles<cr>
map <Leader>; :ProjectFiles<cr>
map <Leader>/ :GGrep<cr>
nnoremap <Tab> :Buffers<cr>

""" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

""" deoplete
set runtimepath+=~/.local/share/nvim/plugged/deoplete.nvim
let g:deoplete#enable_at_startup = 1

""" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"" ruby"
"autocmd FileType ruby setlocal omnifunc=LanguageClient#complete
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

"let g:LanguageClient_serverCommands = {
"      \ 'rust': ['rustup', 'run', 'stable', 'rls'],
"      \ 'javascript': ['~/.asdf/shims/javascript-typescript-stdio'],
"      \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
"      \ 'ruby': ['~/.asdf/shims/solargraph', 'stdio'],
"      \ 'typescript': ['~/.asdf/shims/javascript-typescript-stdio'],
"      \ 'go': ['gopls'],
"      \ }

"nnoremap <leader> K :call LanguageClient#textDocument_hover()<CR>
"nnoremap <Leader> gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <leader> <F2> :call LanguageClient#textDocument_rename()<CR>

"gopls
"autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

"""ale
let g:ale_cpp_clang_options = '-std=c++11 -Wall -stdlib=libc++'
let g:ale_cpp_clangcheck_options = '-- -Wall -std=c++11 -x c++'
let g:ale_linters = {
      \ 'cpp': ['ccls','clangtidy','clang-format','clangd'],
      \ 'latex' : ['texlab'],
      \ 'elixir' : ['elixir-ls', 'credo'],
      \ 'ruby' : ['rubocop','rails_best_practices','brakeman','sorbet'],
      \ 'javascript': ['eslint'],
      \ 'jsx': ['eslint'],
      \ 'typescript': ['tslint', 'tsserver'],
      \ 'sass': ['stylelint'],
      \ 'scss': ['stylelint'],
      \ 'css': ['stylelint'],
      \   'golang': ['golint','gopls'],
      \   'rust': ['cargo', 'rls', 'rustc', 'rustfmt'],
      \}
let g:ale_fix_on_save = 1


call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_completion_tsserver_autoimport = 1

let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'cpp': ['clangtidy','clang-format'],
      \   'markdown': ['prettier'],
      \   'javascript': ['eslint','prettier'],
        \ 'typescript': ['tslint', 'eslint', 'prettier'],
      \   'javascript.jsx': ['prettier'],
      \   'elixir': ['mix_format'],
      \   'sass': ['stylelint'],
      \   'scss': ['stylelint'],
      \   'css': ['stylelint'],
      \   'terraform': ['DoTfFMT'],
      \   'ruby': ['rubocop','sorbet'],
      \   'golang': ['gofmt'],
      \   'rust': ['rustfmt'],
      \}

let g:clang_format#auto_format=1

"""YouCompleteMe
"let g:ycm_global_ycm_extra_conf = '/home/resende/.ycm_extra_conf.py'
"" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
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
let g:hardtime_default_on = 0
let g:hardtime_timeout = 1000
cnoremap kj <C-C>

"Rainbow
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

"Typescript
let g:typescript_indent_disable = 1
let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'
let g:palenight_terminal_italics=1

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

""coc
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
