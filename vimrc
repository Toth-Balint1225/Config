"kinda nessesary
set nocompatible
syntax enable
filetype plugin on
"tabs and basic editor setup
set tabstop=4
set shiftwidth=4
"numbering scheme: relative, but absoulte for the active
set relativenumber number
set autoindent
"showing hotkey commands
set showcmd

"turn off swap files
set noswapfile


"fuzzy finding
"subfolder search and tab-completion for all file related stuff
set path+=**
set wildmenu
" this makes a nice menu and can show options
" :ls lists all buffers, :bw opens a new buffer, :b <some_distinctive_regex>
" auto switches to the buffer

" tag jumping madness
" C-] jumps to definition
" C-[ pops the tagstack (custom setting)
" MakeTags command will generate the tagfile (best at project root)
command! MakeTags !ctags -R .

"italics
set t_ZH=[3m
set t_ZR=[23m

"plugin manager
call plug#begin()

	Plug 'octol/vim-cpp-enhanced-highlight'
	Plug 'vim-scripts/TagHighlight'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-dispatch'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline'
	Plug 'dracula/vim',{'as':'dracula'}
	Plug 'vimwiki/vimwiki'
	Plug 'tomasiser/vim-code-dark'
	Plug 'vim-scripts/darktango.vim'

call plug#end()

"colorscheme
let g:dracula_bold = 1
let g:dracula_italic = 1
let g:dracula_colorterm = 0
colorscheme dracula

"colorscheme codedark
"colorscheme darktango

"dispatch.vim maps 
let g:dispatch_no_maps=1

"keybindings
"ctrl+o to insert a new line in command mode
nnoremap <C-o> o<Esc>
"ctrl+g prefix for tab manipulation + h/l to navigate tabs
nnoremap <C-g>h :tabprevious<Return>
nnoremap <C-g>l :tabnext<Return>
"tab prefix+c to close a tab
nnoremap <C-g>c :tabclose<Return>
"switch from insert to normal using jk
inoremap jk <Esc>


" tag jumping
nnoremap <C-p> :pop <Return>
nnoremap <C-t> :tag <Return>


"netrw setup
"remove banner from top
let g:netrw_banner=0
"split windows to left by default
let g:netrw_altv=1
"folding tree
let g:netrw_liststyle=0
"following current directory
let g:nerw_keepdir=1


"airline rice
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.readonly = ''
let g:airline_section_warning = ''
