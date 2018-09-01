:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

set mouse=a
" 隐藏滚动条" 
"set guioptions-=r 
"set guioptions-=L
"set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"set guioptions+=e"
"设置字体"
"set guifont=Monaco:h13

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'yuttie/comfortable-motion.vim'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
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

" Initialize plugin system
call plug#end()

" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

set background=dark
colorscheme solarized
nmap <silent> <C-T> :NERDTreeToggle<CR>
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

highlight Comment cterm=italic

noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

