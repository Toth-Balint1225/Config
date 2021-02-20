"tabs and basic editor setup
set tabstop=4
set shiftwidth=4
"numbering scheme: relative, but absoulte for the active
set relativenumber number
set autoindent
"set background=dark
"showing hotkey commands
set showcmd

"italics
set t_ZH=[3m
set t_ZR=[23m

"plugin manager
call plug#begin()

	Plug 'octol/vim-cpp-enhanced-highlight'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-dispatch'
	Plug 'vim-airline/vim-airline'
	Plug 'dracula/vim',{'as':'dracula'}
	Plug 'vimwiki/vimwiki'

call plug#end()

"colorscheme
let g:dracula_colorterm = 0
colorscheme dracula

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

"automatic propagation of dispatch.vim
nnoremap <C-m> :Make<Return>

"automatically start terminal in vertical split
nnoremap <C-t> :vertical terminal <Return>

"turn off swap files
set noswapfile


"netrw setup
"remove banner from top
let g:netrw_banner=0
"split windows to left by default
let g:netrw_altv=1
"folding tree
let g:netrw_liststyle=0
"following current directory
let g:nerw_keepdir=1
