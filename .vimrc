inoremap <silent> jj <ESC>
syntax on
set number
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

