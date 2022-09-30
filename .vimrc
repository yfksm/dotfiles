inoremap <silent> jj <ESC>
nmap <Esc><Esc> :nohlsearch<CR><Esc>
syntax on
set number
set hlsearch
set clipboard+=unnamed

"auto complete pairs
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"indent
set autoindent
set smartindent
set smarttab
set expandtab
set shiftwidth=4

"theme
packadd! dracula
syntax enable
colorscheme dracula

