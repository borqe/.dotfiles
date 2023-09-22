" Show a few lines of context around the cursor. 
set scrolloff=5

" I like my numbers this way :>
set number
set relativenumber

" Better search
set incsearch
set ignorecase 
set smartcase 
set visualbell

" My sanity savior
set clipboard^=unnamed,unnamedplus

" Remapping
map Q gq

" Tabs
set shiftwidth=4

" Clean word wrap
set breakindent
set formatoptions=l
set lbr

" PLUGINS -> powered by vim-plug

call plug#begin()

" Plugin list

" fzf needs to be installed separately
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" Initialize plugin system
call plug#end()

" Plugin settings / remappings
" --- FZF ---
map ; :Files<CR>

" --- Theme ---
