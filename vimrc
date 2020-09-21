""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Manas (weirdsmiley) <manas18244@iiitd.ac.in>
" Last Changed: September 21, 2020
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Archlinux's global vimrc: /usr/share/vim/vimfiles/archlinux.vim
" ! makes Vim source all found files
" runtime! archlinux.vim
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

" Disable Ex-mode FFS!
nnoremap Q <NOP>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Time out on mappings
set timeout
" Time out on keycodes
set ttimeout
" Set timeout to 500 ms
set timeoutlen=300
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
" Filetype settings
filetype on
filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab settings
" Number of spaces <Tab> counts for
set tabstop=4
" Count of spaces <Tab> counts for while editing
set softtabstop=4
" Spaces used for every indentation by >> <<
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hybrid line numbering
set relativenumber number
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keep 5 lines off edge while scrolling
set scrolloff=5

" Smooth scrolling
map <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
map <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>
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
" Remap movement keys when wrapping is on

augroup OnWrapMovements
	au!
    autocmd Filetype tex,markdown map j gj
    autocmd Filetype tex,markdown map k gk
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Save current buffer (VERY STUPID MAPPING, BUT I LIKE IT)
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Exit Vim after deleting all buffers (unsaved)
nnoremap ZQ :%bd\|q<CR>

" Disable W & Q in Command-mode
" cnoremap W<CR> w<CR>
" cnoremap Q<CR> q<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WORK: Tons of editing needed
" entering special chars
" for ä - a <BS> :
" for ǎ - a <BS> <
" <BS> = backspaceFiletype 
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
" set termguicolors
" Colorscheme
colorscheme deus
" Set dark mode
set background=dark
" Status line color

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Characters to fill the statuslines and vertical separators
set fillchars+=vert:┆
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line be always visible
set laststatus=2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"Plugin 'itchyny/lightline.vim'
" NeoBundle 'itchyny/lightline.vim'
" Plug 'itchyny/lightline.vim'
"Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line 
"call vundle#end()            " required 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Configurations
" =======================

" Toggle NERDTree window
map <leader>n :NERDTreeToggle<CR>

" Quick close NERDTree after opening a file
let NERDTreeQuitOnOpen = 1

" Expanding arrows
let g:NERDTreeDirArrowExpandable = '➤'
let g:NERDTreeDirArrowCollapsible = '⮩ '

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

" Status bar color
let g:airline_theme='dark'

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
autocmd FileType cpp nnoremap <Leader>l :w <bar> !clear && g++ -g % && echo "done compiling" && echo "running..." && ./a.out<cr>
autocmd FileType cpp nnoremap ;l :w <bar> !clear && g++ -g % && gdb ./a.out<cr>

" Compile and run c code
autocmd FileType c nnoremap <Leader>l :w <bar> !clear && gcc -g % && echo "done compiling" && echo "running..." && ./a.out<cr>
autocmd FileType c nnoremap ;l :w <bar> !clear && gcc -g % && gdb ./a.out<cr>

" Interpret python code
autocmd Filetype python nnoremap <Leader>l :w <bar> !clear && python %<cr>
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
nnoremap ]= :res +10<cr>
" Change size by -10
map ]- :res -10<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" If < 4 buffers are opened in current window then power mapping maps each
" buffer to <Function> keys (F1, F2, F3, F4)
function! MapBuffers()
    let s:buffers_list = filter(range(1, bufnr('$')), 'buflisted(v:val)')
    let s:buffers_count = len(s:buffers_list)
    if s:buffers_count > 4
        echo "More than 4 buffers! I am not programmed for this."
    else
        " loop through elements of buffers_list and exec nnoremap
        let idx = 1
        for buf in s:buffers_list
            execute "nnoremap <F" . idx . "> :" . buf . "b<CR>"
            let idx += 1
        endfor
        echo "Mapped buffers to Function keys."
    endif
endfunction

" Power mapping : map buffers to respective function keys
nnoremap <leader>mb :call MapBuffers()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change terminal's colors
" SUGGESTION: Fix directory colors in terminal
" hi Terminal ctermbg=black ctermfg=white guibg=black guifg=white
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open terminal vertically in split pane
nnoremap tt :vertical terminal<CR>

" Open terminal in a new tab
nnoremap TT :tab terminal ++close<CR>

function! OpenTerminalInNewTab()
    " TODO: For mapping <F1> to Terminal tab and last tab
    " for moving back and forth

endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quick open ~/.vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
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
" BIG ERROR: Opening different filetypes in vertical split, <Leader>l doesn't 
" run appropriate commands, mixes up with other pane's filetype
autocmd FileType rust nnoremap <Leader>l :RustRun!<cr>

" redefine RustPlay cmd with copying the URL and opening in firefox tab
function! RustPlayRedefined()
    let URL = split(execute("RustPlay"), " ")
    silent exec "!firefox --new-tab '".URL[1]."'"
    redraw!
endfunction
autocmd Filetype rust nnoremap <LocalLeader>l :call RustPlayRedefined()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configurations for vimtex
" =========================

" Activate vimtex for latex files with tex filetype
let g:tex_flavor = 'latex'

" Autocompletion
let g:vimtex_complete_enabled = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Skeletons Templates
function! Skel(which_dir, which_template)
	let l:curr_pwd = getcwd()
	if curr_pwd[0:len(a:which_dir)-1] ==# a:which_dir
		if a:which_template ==# 'cpp'
			silent! execute '0r ~/.vim/templates/skeleton_cp.cpp'
			17
		elseif a:which_template ==# 'latex'
			silent! execute '0r ~/.vim/templates/skeleton_latex.tex'
			execute "set filetype=tex"
			30
		elseif a:which_template ==# 'c'
			silent! execute '0r ~/.vim/templates/skeleton_c.c'
			5
		elseif a:which_template ==# 'rust'
			silent! execute '0r ~/.vim/templates/skeleton_c.c'
			5
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
	au BufNewFile *.c call Skel('/home/neon', 'c')
	au BufNewFile *.rs call Skel('/home/neon', 'rs')
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
	au InsertEnter *.txt,*.md,*.c,*.cpp,*.py,*.java,*.rs,*.sh set colorcolumn=80
	" Unset border before leaving insert mode
	au InsertLeave *.c,*.cpp,*.py,*.java,*.rs,*.sh set colorcolumn=
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch to alternate file (if available)
nnoremap <Leader>. <C-^>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add '=' or '-' below the title line in insert mode
au FileType text,markdown inoremap <buffer> === <ESC>kyypV:s/./=/g<cr>:noh<cr>o
au FileType text,markdown inoremap <buffer> --- <ESC>kyypV:s/./-/g<cr>:noh<cr>o
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
" set runtimepath^=~/.vim/bundle/ctrlp.vim

" Customize mappings
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FZF Configurations
" ==================
" Installation
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
call plug#end()

set rtp+=~/.fzf

" Key mappings
" ============

" Enable :Files or :GFiles based on if .git/ exists or not
function! MainFZF()
    if finddir(".git") ==# ".git"
        " nmap <buffer> <silent> <C-p> :GFiles<CR>
        execute "GFiles"
    else
        " nmap <buffer> <silent> <C-p> :Files<CR>
        execute "Files"
    endif
endfunction
nnoremap <C-p> :call MainFZF()<CR>

" Open FZF Window in the middle instead of bottom
let g:fzf_layout = { 'window' : { 'width' : 0.8, 'height' : 0.8 } }

" Reverse the list; gitfiles at top
let $FZF_DEFAULT_OPTS='--reverse'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Gutentags configurations
" ========================

" Force update current tag file with current buffer
nnoremap <LocalLeader>g :GutentagsUpdate<CR>
" Update current tag file for whole project
nnoremap <LocalLeader>g :GutentagsUpdate!<CR>

" Enable gutentags
let g:gutentags_enabled = 1

" For debugging purposes (:GutentagsToggleTrace)
let g:gutentags_define_advanced_commands = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open URLs in default browser
" ERROR: Not working-
"   1. when "URL"  : Takes the latter " along with URL
"   2. when (URL)  : Takes ) along with URL
"   3. when (URL). : Takes ). along with URL
" function! HandleURL()
"     let s:url = join(split(matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*'), "#"), "\\#")
"     echo s:url
"     if s:url != ""
"         " silent exec "!xdg-open '".s:url."'"
"         silent exec "!firefox --new-tab '".s:url."'"
"         redraw!
"     else
"         echo "No URL found in line."
"     endif
" endfunction

function! HandleURL()
  let s:uri = matchstr(getline("."), '[a-z]*:\/\/[^ >,;()]*')
  let s:uri = shellescape(s:uri, 1)
  echom s:uri
  if s:uri != ""
    silent exec "!firefox --new-tab '".s:uri."'"
    :redraw!
  else
    echo "No URI found in line."
  endif
endfunction

nnoremap gx :call HandleURL()<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Presentation and Creative Mode (for drawing diagrams and ASCII texts
" purposes
nmap <LocalLeader>b :.!toilet -w 200 -f term -F border<CR>

" check if a bash command exists or not
nmap <LocalLeader>f :.!toilet -w 200 <CR>
nmap <LocalLeader>b :.!toilet -w 200 -f term -F border<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEST: Function for counting pattern occurence in a line

function! Count_Occurence(matchstr)
    let curpos = getcurpos()
    let curline = getline(curpos[1])
    let colno = 0
    let counter = 0

    while colno < curpos[2]
        if curline[colno] =~ a:matchstr
            let counter += 1
        endif
        let colno += 1
    endwhile
    echo "Count is " . counter
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe Configurations
" ============================

" Jump to definitions
nmap <buffer> <silent> <Leader>gd :YcmCompleter GoToDefinition<CR>
" Show all references
nmap <buffer> <silent> <Leader>gr :YcmCompleter GoToReferences<CR>
" Rename the literal
nmap <buffer> <silent> <Leader>rr :YcmCompleter RefactorRename<SPACE>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Replace command
com -range=% -nargs=1 P exe "<line1>,<line2>!".<q-args> |y|sil u|echom @"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LLVM IR and related configurations
" ==================================

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Don't show current mode (Airline does that)
set noshowmode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
