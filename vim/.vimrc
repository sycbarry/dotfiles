set nocompatible              " be iMproved, required
filetype off                  " required
 
"let g:solarized_termcolors=256
set termguicolors



""a new window: C^W + V
""

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/vim/autoload/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'frazrepo/vim-rainbow'
""Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lyuts/vim-rtags'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
""Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'vim-airline/vim-airline'
Plug 'relastle/bluewery.vim'
Plug 'voldikss/vim-floaterm'
"Plug 'frazrepo/vim-rainbow'
" Initialize plugin system
"
call plug#end()




""klet g:gruvbox_contrast_dark = 'dark'
syntax on
"set background=dark
""colorscheme nord
colorscheme darcula 
"""colorscheme solarized8_high
""colorscheme dark 
""colorscheme molokai
set number
set noerrorbells
set wrap
set nolist
set linebreak
set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set smartindent
set nu
set noswapfile
set incsearch
set nobackup
set smartcase




if executable('rg')
    let g:rg_derive_root='true'
endif


" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8



let mapleader = " "
let g:ctrlp_use_caching = 0
let g:newtrw_banner = 0
command! -nargs=0 Prettier :CocCommand prettier.formatFile
"let g:rainbow_active = 1
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :wincmd u<CR>
nnoremap <leader>pv :wincmd pv<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>pa :FZF<CR> 
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>



nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <leader>gf :YcmCompleter FixIt<CR>


"""nnoremap <leader>pt :FloatermToggle <CR>
let g:floaterm_keymap_toggle = '<leader>pt'


