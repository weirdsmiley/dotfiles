runtime! archlinux.vim
" e.g.	:Man fork
runtime ftplugin/man.vim

set runtimepath+=/home/neon/workspace/vimplugins/mpc/

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

" switch buffers without saving
set hidden

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

" viminfo confs
set viminfo='10,<100,:100,%,n~/.vim/.viminfo

" Display options
" set noshowmode
" set showcmd

" Enable mouse
" set mouse=a

set encoding=utf8
set guifont=DroidSansMono\ Nerd\ Font\ 16

if has("gui_running")
	set guifont=Inconsolata\ 16
endif

" Theme
set termguicolors
"colorscheme gruvbox
colorscheme deus
"colorscheme deep-space
set fillchars+=vert:\ 
"set guifont=Menlo_for_Powerline:h9 
"set background=light   " Setting light mode
set background=dark    " Setting dark mode

"hi Normal guibg=NONE ctermbg=NONE

set laststatus=2
filetype on

filetype plugin indent on

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'itchyny/lightline.vim'
" NeoBundle 'itchyny/lightline.vim'
" Plug 'itchyny/lightline.vim'
"Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line 
"call vundle#end()            " required 

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
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'

map <leader>n :NERDTreeToggle<CR>

" nercommenter config
"----------------------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Custom mappings
" ===============
" Compile and run cpp code
" IMPORTANT : try doing if binary exists then dont compile again
" i.e. if no changes then no compile
autocmd FileType cpp map <leader>l :!clear && g++ -g % && echo "done compiling" && echo "running..." && ./a.out<cr>
autocmd FileType cpp map ;l :!clear && g++ -g % && gdb ./a.out<cr>

" Compile and run c code
autocmd FileType c map <leader>l :!clear && gcc -g % && echo "done compiling" && echo "running..." && ./a.out<cr>
autocmd FileType c map ;l :!clear && gcc -g % && gdb ./a.out<cr>

" Markdown
function! Compile_Open_MD()
	" compile using pandoc
	let pdfname = expand(expand('%:t:r') . ".pdf")
	execute '!echo "Generating pdf..." && pandoc % -o ' . pdfname . ' --table-of-contents --pdf-engine=xelatex --indented-code-classes=c --highlight-style=tango -V documentclass=report -V papersize=A5 -V colorlinks -V urlcolor=NavyBlue -V toccolor=NavyBlue -V geometry:"top=1cm, bottom=1.5cm, left=1cm, right=1cm" > /dev/null 2>&1 '

	" open using okular
	execute 'silent !okular ' . pdfname . ' &> /dev/null &'
	redraw!
endfunction
" IMPORTANT
autocmd FileType markdown map <leader>l :call Compile_Open_MD()<cr>
" autocmd FileType markdown map <leader>l :call Compile_Open_MD() && execute 'silent !okular %.pdf &> /dev/null  &'<cr> | redraw!

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

" open help on right window
autocmd FileType help wincmd L

" skeletons for competitive programming
function! Skel(which_dir)
	let l:curr_pwd = getcwd()
	if curr_pwd[0:len(a:which_dir)-1] ==# a:which_dir
		silent! execute '0r ~/.vim/templates/skeleton_cp.cpp'
		10
	endif
endfunction

augroup templates
	au!
	au BufNewFile *.cpp call Skel('/home/neon/workspace/codechef')
	au BufNewFile *.cpp call Skel('/home/neon/workspace/codeforces')
	au BufNewFile *.cpp call Skel('/home/neon/workspace/foobarcp')
	au BufNewFile *.cpp call Skel('/home/neon/workspace/hashcode')
augroup END

" add current time while hitting enter key in insert mode
" useful while note-taking etc.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for buffer local mappings :
"     if timestamping is needed only in one buffer, define function in
"     command-mode, and use 
"         :inoremap <buffer> <CR> <ESC>:call PrependTime()<CR>A
"     to define buffer-local map
"     
"     another way is to use Funcref `:h Funcref`
"     but this way throws some error of refer. not found in other buffers
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function PrependTime(which_dir)
"         let l:curr_pwd = getcwd()
"         if curr_pwd[0:len(a:which_dir)-1] ==# a:which_dir
"                 r !printf '[' && date | awk '{printf $5}' && printf '] '
"                 " execute 'normal A'
"         endif
" endfunction
" autocmd FileType markdown inoremap <ENTER> <ESC>:call PrependTime('/home/neon/workspace/notes')<cr>A

" turn off relative numbering when buffer loses focus
" from → https://github.com/jeffkreeftmeijer/vim-numbertoggle
augroup numbertoggle
	au!
	au BufEnter,FocusGained,WinEnter * if &number | set relativenumber | endif
	au BufLeave,FocusLost,WinLeave   * if &number | set norelativenumber | endif
augroup END

augroup fortext
	au!
	au BufNewFile *.txt set colorcolumn=80
	au BufNewFile *.md set colorcolumn=80
	au BufLeave *.txt set colorcolumn=
	au BufLeave *.md set colorcolumn=
augroup END

" does something ?? (:h E23)
nnoremap <leader><leader> <C-^>

" add = and - below the title line in insert mode
" This is a title
" ===============
autocmd FileType text,markdown inoremap <buffer> === <ESC>kyypV:s/./=/<cr>:noh<cr>o
autocmd FileType text,markdown inoremap <buffer> --- <ESC>kyypV:s/./-/<cr>:noh<cr>o

" modeline disabled
set nomodeline

" temporary usage of fzf
set rtp+=~/.fzf

set noshowmode
