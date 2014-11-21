set encoding=utf-8      " use UTF-8 encoding
set nocompatible        " be iMproved

call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'bling/vim-airline'
call plug#end()

set laststatus=2 " Always show statusline

set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set timeoutlen=1000 ttimeoutlen=0 " ensure we don't need to double click esc

filetype plugin indent on " load indent file for specific filetypes
syntax on " enable syntax highlighting

colorscheme wombat " set theme 

set cursorline " show line below cursor
set noswapfile " disable swap file
set exrc " enable per-directory .vimrc files
set number " show line number
set numberwidth=4 " set line number width
set nowrap " dont wrap lines
set showmatch " show matching braces
set mouse=nicr " enable mouse scrolling

