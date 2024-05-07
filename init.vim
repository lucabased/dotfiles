" Formatting base vim

set tabstop=4
set encoding=utf-8
set shiftwidth=4
set softtabstop=4

" Functionality base vim
set title
set noerrorbells
set mouse=a
set number
set cursorline

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch
set nolazyredraw


" Backup
set backupdir=~/.cache/vim
	" Dir to store swap cache
set dir=~/.cache/vim
	" Exit confirmation
set confirm
	" Ugly red formatting



call plug#begin()
Plug 'feline-nvim/feline.nvim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'ellisonleao/gruvbox.nvim'

" JS // TS // GQL
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

" Auto-completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

lua require('feline').setup()
set background=dark
colorscheme gruvbox
" Make background transparent
hi Normal guibg=NONE ctermbg=NONE

" Key bindings



" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
