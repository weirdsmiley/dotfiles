runtime! archlinux.vim
" e.g.	:Man fork
runtime ftplugin/man.vim

" Set compatibility to Vim only
set nocompatible

" autocompletion
set wildmode=longest,list,full

" to open man pages vertically
let g:ft_man_open_mode = 'vert'

" change leader key
let mapleader = ','

" split right and below
set splitbelow splitright

" Load plugins here (pathogen or vundle)
execute pathogen#infect()

" Automatically wrap text that extends beyond the screen length.
set wrap
set linebreak
set breakindent
set breakindentopt=shift:8

" Syntax highlighting
syntax on

" Relative number
set relativenumber

" Show line numbers
set number

" keep 5 lines off edge while scrolling
set scrolloff=5

" all matches on line subs instead one, by default
set gdefault

" highlight search
set hlsearch
set incsearch

" remove search highlights
nnoremap <leader><space> :noh<cr>

" Speed up scrolling in Vim
set ttyfast

" entering special chars
" for ä - a <BS> :
" for ǎ - a <BS> <
" <BS> = backspace
" although, use <C-k>, <C-v> if not a touch typist
"set dg

" enable xterm_clipboard for outside vim copying/pasting
" only if vim --version | grep xterm_clipboard
" return +xterm_clipboard
" set clipboard=unnamedplus
" straight outta vim fandom ()
"
" what can be done:
" 1. selection of a blob of text in visual mode
" 2. going to command line mode (:)
" 3. :'<,'>cz ....etc
"
" z → X11-clipboard
" x → X11 primary selection
" v → X11 secondary selection
"
" how to → ? (<C-v>u2192)
" while in insert mode, hit <C-v> followed by `u`
" then the unicode codepoint
"
command -range Cz :silent :<line1>,<line2>w !xsel -i -b
command -range Cx :silent :<line1>,<line2>w !xsel -i -p
command -range Cv :silent :<line1>,<line2>w !xsel -i -s
cabbrev cv Cv
cabbrev cz Cz
cabbrev cx Cx

command -range Pz :silent :r !xsel -o -b
command -range Px :silent :r !xsel -o -p
command -range Pv :silent :r !xsel -o -s

cabbrev pz Pz
cabbrev px Px
cabbrev pv Pv
" end

" viminfo confs
set viminfo='10,<100,:100,%,n~/.vim/.viminfo

" Display options
" set noshowmode
" set showcmd

" Enable mouse
" set mouse=a

" Theme
set termguicolors
colorscheme deus
"colorscheme deep-space
set fillchars+=vert:\ 
set guifont=Menlo_for_Powerline:h9 
"set background=light   " Setting light mode
set background=dark    " Setting dark mode

hi Normal guibg=NONE ctermbg=NONE

set laststatus=2
filetype on

filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'itchyny/lightline.vim'
" NeoBundle 'itchyny/lightline.vim'
" Plug 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line 
call vundle#end()            " required 

execute pathogen#infect()

filetype plugin indent on    " required 
cnoremap W w
cnoremap Q q

" NERDTree custom arrows
let g:NERDTreeDirArrowExpandable = '➤'
let g:NERDTreeDirArrowCollapsible = '➤'
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")
let NERDTreeShowBookmarks=1
let NERDTreeHighlightCursorline=1


"let g:lightline = {
"      \ 'colorscheme': 'Tomorrow_Night_Blue',
"      \ 'active': {
"      \   'left': [ [ 'mode', 'paste' ],
"      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"      \ },
"      \ 'component_function': {
"      \   'gitbranch': 'fugitive#head'
"      \ },
"      \ }

" airline configurations
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1
let g:airline_inactive_collapse=1
let g:airline_inactive_alt_sep=1
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

map <leader>n :NERDTreeToggle<CR>

" Variables for codeforces.vim
" let g:CodeForcesCount = 30
" let g:CodeForcesContestID = 604
" let g:CodeForcesUpdateInterval = 2
" let g:CodeForcesCountOfSubmits = 10
" let g:CodeForcesShowUnofficial = 1
" let g:CodeForcesFriends = 1
" let g:CodeForcesUsername = 'manasmk'
" let g:CodeForcesPassword = 'Qwertypi#123'
" let g:CodeForcesLang = 'en'


" Custom mappings
" ===============
" Compile and run cpp code
autocmd FileType cpp map <leader>l :!clear && g++ -g % && echo "done compiling" && echo "running..." && ./a.out<cr>
autocmd FileType cpp map ;l :!clear && g++ -g % && gdb ./a.out<cr>

" Compile and run c code
autocmd FileType c map <leader>l :!clear && gcc -g % && echo "done compiling" && echo "running..." && ./a.out<cr>
autocmd FileType c map ;l :!clear && gcc -g % && gdb ./a.out<cr>

" Markdown
autocmd FileType markdown map <leader>l :execute 'silent !okular % &> /dev/null  &'<cr> | redraw!

" Change current window size by +10
"map + :res +10<cr>
map [= :res +10<cr>

" Change current window size by -10
"map - :res -10<cr>
map ]- :res -10<cr>

" Open terminal
map tt :vertical terminal<cr>

" quick open .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" configuration for rust-lang
" ===========================
" disable default style recomm (tabs=4, textwidth=99)
let g:rust_recommended_style = 0
" enable folding
let g:rust_fold = 1
" URL for rust playground
let g:rust_playpen_url = 'https://play.rust-lang.org/'
" compiling and running code
autocmd FileType rust map<leader>l :RustRun!<cr>


" skeletons for competitive programming
"if getcwd() !=# getcwd()
"	au BufNewFile *.cpp 0r ~/.vim/templates/skeleton_cp.cpp
"endif

nnoremap <leader><leader> <C-^>

" temporary usage of fzf
set rtp+=~/.fzf

set noshowmode
