""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Manas (weirdsmiley) <manas18244@iiitd.ac.in>
" Last Changed: July 12, 2020
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Archlinux's global vimrc: /usr/share/vim/vimfiles/archlinux.vim
" ! makes Vim source all found files
runtime! archlinux.vim
" Man command in Vim: /usr/share/vim/vim82/ftplugin/man.vim
" Use:	:Man fork
runtime ftplugin/man.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Differing from Vi-compatibility; its setting affects a lot of other options
set nocompatible
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap leader key to comma(,)
" SUGGESTION: Consider better key for Leader
let mapleader = ','
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocompletion
" longest: complete till longest common string
" list: if more than one match, list all matches
" full: complete next full match
set wildmode=longest,list,full
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Orientation of tab and pane of man page, when opened
" options available: 'vert'(vsplit) and 'tab'(tabedit)
" from /usr/share/vim/vim82/ftplugin/man.vim :171
let g:ft_man_open_mode = 'vert'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Setting local leader to backslash(\)
" To be used for mappings which are local to a buffer
" map.txt suggests <Leader> should be used for global plugin and
" <LocalLeader> in a filetype plugin
" SUGGESTION: Consider better key for LocalLeader
let maplocalleader = "\\"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Orientation of opened windows
" Split a window below and right side(vsplit) always
set splitbelow splitright
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open help on right window
" WORK: Does not work more than once in same instance
autocmd FileType help wincmd L
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WORK: Add comment; arrange plugins
" Load plugins here (pathogen or vundle)
execute pathogen#infect()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting
" 'syntax enable' keeps current color setting while 'syntax on' overrides
" user settings with defaults
syntax enable
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Wrap long lines
" Automatically wrap text that extends beyond the screen length.
set wrap
" Wrap lines at character in 'breakat'(string) instead of last character 
" that fits on screen
set linebreak
" Indent wrapped lines
set breakindent
" Shift wrapped lines by 4 spaces
set breakindentopt=shift:4
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab settings
" Number of spaces <Tab> counts for
set tabstop=4
" Count of spaces <Tab> counts for while editing
set softtabstop=4
" Spaces used for every indentation by >> <<
set shiftwidth=4
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hybrid line numbering
set relativenumber number
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keep 5 lines off edge while scrolling
set scrolloff=5
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch buffers without saving
set hidden
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search settings
set hlsearch
set incsearch

" Show search number
set shortmess-=S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove search highlights
nnoremap <leader><space> :noh<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Improve smoothness of redrawing
set ttyfast
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WORK: Tons of editing needed
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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" .viminfo stores information about windows at closing which can be used while
" reopening those files
set viminfo='10,<100,:100,%,n~/.vim/.viminfo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do not put message about the current mode on bottom line
set noshowmode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Partial command on bottom right corner of screen
set showcmd
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show tabline always
set showtabline=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Character encoding
set encoding=utf8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Font settings
if has("gui_running")
	set guifont=Inconsolata\ 16
else
	set guifont=DroidSansMono\ Nerd\ Font\ 16
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme settings
set termguicolors
" Colorscheme
colorscheme deus
" Set dark mode
set background=dark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Characters to fill the statuslines and vertical separators
set fillchars+=vert:┆
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line be always visible
set laststatus=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetype settings
filetype on
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'itchyny/lightline.vim'
" NeoBundle 'itchyny/lightline.vim'
" Plug 'itchyny/lightline.vim'
"Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line 
"call vundle#end()            " required 

execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable W & Q in Command-mode
" SUGGESTION: Find better solution instead of replacing chars
cnoremap W w
cnoremap Q q
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Configurations
" =======================

" Toggle NERDTree window
map <leader>n :NERDTreeToggle<CR>

" Expanding arrows
let g:NERDTreeDirArrowExpandable = '➤'
let g:NERDTreeDirArrowCollapsible = '➤'

" Disable hijacking
let g:NERDTreeHijackNetrw = 0

" Store bookmarks
let NERDTreeBookmarksFile=expand("$HOME/.vim/NERDTreeBookmarks")

" Show bookmarks table
let NERDTreeShowBookmarks=1

" Highlight cursor line in NERDTree window
let NERDTreeHighlightCursorline=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline configurations
" ======================

" Define dictionary to store symbols
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" Add symbols for customization
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

" Using powerline symbols
let g:airline_powerline_fonts = 1

" Few more options
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#ycm#error_symbol = 'E:'
let g:airline#extensions#ycm#warning_symbol = 'W:'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDCommenter configurations
" ============================

" Add a whitespace around comment delimiters
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead following code indent.
let g:NERDDefaultAlign = 'left'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Compiling and executing various source codes
" ============================================
" SUGGESTION: try doing if binary exists without change then dont compile again

" Compile and run cpp code
autocmd FileType cpp nnoremap <Leader>l :!clear && g++ -g % && echo "done compiling" && echo "running..." && ./a.out<cr>
autocmd FileType cpp nnoremap ;l :!clear && g++ -g % && gdb ./a.out<cr>

" Compile and run c code
autocmd FileType c nnoremap <Leader>l :!clear && gcc -g % && echo "done compiling" && echo "running..." && ./a.out<cr>
autocmd FileType c nnoremap ;l :!clear && gcc -g % && gdb ./a.out<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Building various markup language files
" ======================================

" Compile a markdown file and open it in a pdf viewer
" SUGGESTION: Not compiling if unchanged file
function! Compile_Open_MD()
	" compile using pandoc
	let pdfname = expand(expand('%:t:r') . ".pdf")
	execute '!echo "Generating pdf..." && pandoc % -o ' . pdfname . ' --table-of-contents --pdf-engine=xelatex --indented-code-classes=c --highlight-style=tango -V documentclass=report -V papersize=A5 -V colorlinks -V urlcolor=NavyBlue -V toccolor=NavyBlue -V geometry:"top=1cm, bottom=1.5cm, left=1cm, right=1cm" > /dev/null 2>&1 '

	" open using okular
	execute 'silent !okular ' . pdfname . ' &> /dev/null &'
	" redraw vim windows after opening the pdf
	redraw!
endfunction

" Compile a LaTex file and open it in a pdf viewer
" SUGGESTION: Collect all log files in a directory in cwd
function! Compile_Open_Latex()
	" compile using pdflatex
	let pdfname = expand(expand('%:t:r') . ".pdf")
	execute '!echo "Generating pdf..." && pdflatex -interaction nonstopmode % -o ' . pdfname . ' > /dev/null 2>&1 '

	" open using okular
	execute 'silent !okular ' . pdfname . ' &> /dev/null &'
	" redraw vim windows after opening the pdf
	redraw!
endfunction

" Augroup for mappings which control compilation for various files
augroup CompileController
	au!
	autocmd FileType markdown nnoremap <Leader>l :call Compile_Open_MD()<cr>
	autocmd FileType tex nnoremap <Leader>l :call Compile_Open_Latex()<cr>
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Resize current buffer
" =====================
" Change size by +10
nnoremap [= :res +10<cr>
" Change size by -10
map ]- :res -10<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change terminal's colors
" SUGGESTION: Fix directory colors in terminal
" hi Terminal ctermbg=black ctermfg=white guibg=black guifg=white
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open terminal vertically
map tt :vertical terminal<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quick open ~/.vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configurations for Rust
" =======================

" Disable default style recomm (tabs=4, textwidth=99)
let g:rust_recommended_style = 0
" Enable folding
let g:rust_fold = 1
" URL for rust playground
let g:rust_playpen_url = 'https://play.rust-lang.org/'
" Compiling and running code
autocmd FileType rust nnoremap <Leader>l :RustRun!<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Skeletons Templates
function! Skel(which_dir, which_template)
	let l:curr_pwd = getcwd()
	if curr_pwd[0:len(a:which_dir)-1] ==# a:which_dir
		if a:which_template ==# 'cpp'
			silent! execute '0r ~/.vim/templates/skeleton_cp.cpp'
			10
		elseif a:which_template ==# 'latex'
			silent! execute '0r ~/.vim/templates/skeleton_latex.tex'
			execute "set filetype=tex"
			21
		endif
	endif
endfunction

augroup Templates
	au!
	au BufNewFile *.cpp call Skel('/home/neon/workspace/codechef', 'cpp')
	au BufNewFile *.cpp call Skel('/home/neon/workspace/codeforces', 'cpp')
	au BufNewFile *.cpp call Skel('/home/neon/workspace/foobarcp', 'cpp')
	au BufNewFile *.cpp call Skel('/home/neon/workspace/hashcode', 'cpp')
	au BufNewFile *.tex call Skel('/home/neon', 'latex')
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add current time while hitting enter key in insert mode
" useful while note-taking etc.
" for buffer local mappings :
"     if timestamping is needed only in one buffer, define function in
"     command-mode, and use 
"         :inoremap <buffer> <CR> <ESC>:call PrependTime()<CR>A
"     to define buffer-local map
"     
"     another way is to use Funcref `:h Funcref`
"     but this way throws some error of refer. not found in other buffers
"
" If have multiple dynamic variables for each template file which need to be
" updated:
" For e.g.
" Name: <AUTHOR>
" Date: <TODAY>
" etc
"
" :%s/<\([^>]*\)>/\=get({'TODAY':strftime('%c'), 'AUTHOR':$USER}, submatch(1), submatch(1))
" 
" function PrependTime(which_dir)
"         let l:curr_pwd = getcwd()
"         if curr_pwd[0:len(a:which_dir)-1] ==# a:which_dir
"                 r !printf '[' && date | awk '{printf $5}' && printf '] '
"                 " execute 'normal A'
"         endif
" endfunction
" au FileType markdown inoremap <ENTER> <ESC>:call PrependTime('/home/neon/workspace/notes')<cr>A
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn off relative numbering when buffer loses focus
" Ack : https://github.com/jeffkreeftmeijer/vim-numbertoggle
augroup numbertoggle
	au!
	au BufEnter,FocusGained,WinEnter * if &number | set relativenumber | endif
	au BufLeave,FocusLost,WinLeave   * if &number | set norelativenumber | endif
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't go outside 80 chars in a line
augroup Overflow80
	au!
	" Set border when entering insert mode
	au InsertEnter *.txt,*.md,*.c,*.cpp,*.py,*.java,*.rs set colorcolumn=80
	" Unset border before leaving insert mode
	au InsertLeave *.txt,*.md,*.c,*.cpp,*.py,*.java,*.rs set colorcolumn=
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch to alternate file (if available)
nnoremap <Leader><Leader> <C-^>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add '=' or '-' below the title line in insert mode
au FileType text,markdown inoremap <buffer> === <ESC>kyypV:s/./=/<cr>:noh<cr>o
au FileType text,markdown inoremap <buffer> --- <ESC>kyypV:s/./-/<cr>:noh<cr>o
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Modeline disabled ( Vulnerability: CVE-2019-12735 )
set modeline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" play chess using chs and stockfish engine
" Any way to increase buffer-local font size change
" Or zoom
" Look for +xfontset option in vim
function! PlayChess()
	if has('terminal')
		let level = input('Which Level? (1-8) ', '1')
		" execute ":vertical terminal ++close chs level=" . level
		highlight TermChess ctermfg=15 ctermbg=0 guifg=white guibg=black
		let term_buffer = term_start("chs level=" . level, {"term_name":"Chess", "term_rows":40, "term_cols":60, "vertical":1, "curwin":0, "norestore":1, "term_finish":"close", "term_highlight":"TermChess"})
	endif
endfunction

" Controller
map <leader>pc :call PlayChess()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrl-p configurations
" =====================

" Initializing plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Customize mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't show current mode (Airline does that)
set noshowmode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
