set nocompatible            " Disable vi compatibility

filetype on                 " filetype must be 'on' before setting it 'off'
                            "   otherwise it exits with a bad status and breaks
                            "   git commit.
filetype off                " force reloading *after* pathogen loaded

" Vundle Install {{{
if !isdirectory(expand('$HOME/.vim/bundle/vundle/.git', 1))
  silent ! git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  if v:shell_error
    finish
  else
    silent ! vim +BundleInstall +qall
  endif
endif
" }}}
" Vundle {{{
set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
call vundle#begin()
Bundle 'gmarik/vundle'
" Syntax {{{
"   Bundle 'tpope/vim-git'
"   Bundle 'pangloss/vim-javascript'
"   Bundle 'leshill/vim-json'
"   Bundle 'groenewege/vim-less'
  Bundle 'tpope/vim-markdown'
"   Bundle 'mmalecki/vim-node.js'
  Bundle 'timcharper/textile.vim'
"   Bundle 'tpope/vim-liquid'
  " tpope/liquid should put after markdown and textile
  Bundle 'klen/python-mode'
" }}}
" Editing {{{
"   Bundle 'tpope/vim-abolish'
"   Bundle 'kien/ctrlp.vim'
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

"   Bundle 'Lokaltog/vim-easymotion'
"   Bundle 'kana/vim-fakeclip'
"   nmap <Leader><Leader> "+
"   vmap <Leader><Leader> "+
" 
"   Bundle 'vim-scripts/lastpos.vim'
"   Bundle 'tpope/vim-repeat'
"   Bundle 'sjl/gundo.vim'
"   Bundle 'vim-scripts/ZoomWin'
" }}}
" Programming {{{
"   Bundle 'tpope/vim-commentary'
"   Bundle 'mattn/emmet-vim'
"   Bundle 'tpope/vim-endwise'
"   Bundle 'tpope/vim-fugitive'
"   Bundle 'airblade/vim-gitgutter'
"   let g:gitgutter_enabled = 0
"   let g:gitgutter_on_bufenter = 0
" 
"   Bundle 'gregsexton/gitv'
"   Bundle 'nathanaelkane/vim-indent-guides'
"   let g:indent_guides_guide_size = 1
" 
"   Bundle 'michaeljsmith/vim-indent-object'
"   runtime macros/matchit.vim
"   Bundle 'terryma/vim-multiple-cursors'
"   Bundle 'scrooloose/nerdcommenter'
"   Bundle 'scrooloose/nerdtree'
"   Bundle 'chrisbra/NrrwRgn'
"   Bundle 'tpope/vim-scriptease'
"   Bundle 'AndrewRadev/splitjoin.vim'
"   Bundle 'ervandew/supertab'
"   Bundle 'scrooloose/syntastic'
"   Bundle 'godlygeek/tabular'
"   Bundle 'bronson/vim-trailing-whitespace'
    Bundle 'ntpeters/vim-better-whitespace'
"   Bundle 'tpope/vim-unimpaired'

  Bundle 'altercation/vim-colors-solarized'
"   Bundle 'millermedeiros/vim-statline'
   Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" }}}
call vundle#end()

" python from powerline.bindings.vim import source_plugin; source_plugin()
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
" Powerline setup
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" set guifont=Anonympus\ Pro\ for\ Powerline\ 9
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 12
let g:Powerline_symbols='unicode'
set t_Co=256

set laststatus=2

syntax on
filetype plugin indent on   " enable detection, plugins and indent

" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" --- command completion ---
set wildmenu                " Hitting TAB in command mode will
set wildchar=<TAB>          "   show possible completions.
set wildmode=list:longest
set wildignore=*.log,*.aux,*.dvi,*.aut,*.aux,*.bbl,*.blg,*.dvi,*.fff,*.log,*.out,*.pdf,*.ps,*.toc,*.ttt,*.pyc,*.pyo
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif

" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Change mapleader
let mapleader=","
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=4
" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
set visualbell
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
" set title

" add useful stuff to title bar (file name, flags, cwd)
" based on @factorylabs
if has('title') && (has('gui_running') || &title)
    set titlestring=
    set titlestring+=%f
    set titlestring+=%h%m%r%w
    set titlestring+=\ -\ %{v:progname}
    set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}
endif

" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" python related

filetype plugin indent on
" todo Read https://github.com/klen/python-mode#readme

" Number of spaces that a pre-existing tab is equal to.
" For the amount of space used for a new tab use shiftwidth.
"au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4
" What to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
" Python: 4 spaces
" C: tabs (pre-existing files) or 4 spaces (new files)

au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
"fu Select_c_style()
"    if search('^\t', 'n', 150)
"        set shiftwidth=8
"        set noexpandtab
"    el 
"        set shiftwidth=4
"       set expandtab
"    en
"endf
"au BufRead,BufNewFile *.c,*.h call Select_c_style()
au BufRead,BufNewFile Makefile* set noexpandtab
" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red
"
" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" <tab> for vim: http://stackoverflow.com/questions/9172802/setting-up-vim-for-python
au FileType py set autoindent
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py set nocindent
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operatormodes)
" [M            Jump on previous class or method (normal, visual, operatormodes)
" ]M            Jump on next class or method (normal, visual, operatormodes)
let g:pymode_rope = 1
"
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
"
" Support virtualenv
let g:pymode_virtualenv = 1
"
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"
" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
"
" autofold code
let g:pymode_folding = 1
"#Toggle fold methods \fo
" let g:FoldMethod = 0
"
"
"filetype plugin indent on
"syntax on
" Automatic commands
"if has("autocmd")
	" Enable file type detection
"	filetype on
	" Treat .json files as .js
"	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
"endif
" (un-)commenting
" Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
"
noremap <silent> ,c :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
noremap <silent> ,u :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>
" " comment line, selection with ,c
" au BufEnter *.py nnoremap ,c mn:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR>:noh<CR>`n
" au BufEnter *.py inoremap ,c <C-O>mn<C-O>:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR><C-O>:noh<CR><C-O>`n
" au BufEnter *.py vnoremap ,c mn:s/^\(\s*\)#*\(.*\)/\1#\2/ge<CR>:noh<CR>gv`n
" "
" " " uncomment line, selection with ,u
" au BufEnter *.py nnoremap ,u mn:s/^\(\s*\)#\([^ ]\)/\1\2/ge<CR>:s/^#$//ge<CR>:noh<CR>`n
" au BufEnter *.py inoremap ,u <C-O>mn<C-O>:s/^\(\s*\)#\([^ ]\)/\1\2/ge<CR><C-O>:s/^#$//ge<CR><C-O>:noh<CR><C-O>`n
" au BufEnter *.py vnoremap ,u mn:s/^\(\s*\)#\([^ ]\)/\1\2/ge<CR>gv:s/#\n/\r/ge<CR>:noh<CR>gv`n


filetype plugin indent on
" Colorschemes {{{
"  Bundle 'chriskempson/base16-vim'
"  Bundle 'larssmit/vim-getafe'
"  Bundle 'ciaranm/inkpot'
"  Bundle 'twerth/ir_black'
"  Bundle 'nelstrom/vim-mac-classic-theme'
"  Bundle 'tomasr/molokai'
"  let g:molokai_original = 0
"  let g:rehash256 = 1

  " enabling the dark solarized scheme
  syntax enable
  let g:solarized_termcolors=256
  set background=dark
  colorscheme solarized
  syntax on 

" }}}
