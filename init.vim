"-- True colour --
set termguicolors

"-- Line number --
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set mouse=a
" 藏滚动条" 
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"藏顶部标签栏"
set showtabline=0
"set guioptions+=e"

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'yuttie/comfortable-motion.vim'
Plug 'scrooloose/nerdtree'
"Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'klen/python-mode'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'jmcantrell/vim-virtualenv'
Plug 'wikitopian/hardmode'
Plug 'vim-scripts/c.vim'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
Plug 'neomake/neomake'
Plug 'mhinz/vim-startify'
Plug 'ap/vim-css-color'

Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

"-- Hard mode --
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
"nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

"-- Solarized --
"let g:solarized_termcolors=256
"let g:solarized_contrast  ="high"
"syntax enable
"set background=dark
"colorscheme solarized
"call togglebg#map("<F5>")

"-- Nerd Tree--
nmap <silent> <C-T> :NERDTreeToggle<CR>
let g:indentLine_char='┆'
set list lcs=tab:\┆\ 
let g:indentLine_enabled = 1

highlight Comment cterm=italic

"-- Smooth scrolling --
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

" -- Emmet --
let g:user_emmet_leader_key=','

"-- Lightline theme --
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

"-- Solarized8 --
"let g:solarized_use16 = 1 "For terminals do not support true colour
set background=dark
colorscheme solarized8_high 

"-- vim settings --
setlocal autoindent
setlocal smartindent
autocmd Filetype css setlocal ts=4 sw=2 expandtab
autocmd Filetype html setlocal ts=4 sw=2 expandtab
autocmd Filetype xhtml setlocal ts=4 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=2 expandtab
autocmd Filetype scss setlocal ts=4 sw=2 expandtab

"-- Highlight cursor --
set cursorline
