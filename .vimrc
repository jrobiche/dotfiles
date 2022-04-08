call plug#begin()

" https://github.com/neomake/neomake
" run programs asynchronously
" requirements:
"   pip install pylint
"   nuspell
Plug 'neomake/neomake'

" https://github.com/psf/black
" python formatter
" requirements: (for nvim)
"   pip install neovim
Plug 'psf/black', { 'branch': 'stable' }

" https://github.com/sbdchd/neoformat
" code formatter
" usage:
"   :Neoformat
Plug 'sbdchd/neoformat'

" https://github.com/tmhedberg/SimpylFold
" python code folder
" usage:
"   :help fold-commands
Plug 'tmhedberg/SimpylFold'

" https://github.com/tpope/vim-commentary
" code commenter
" usage:
"  toggle comment of visual selection: gc
Plug 'tpope/vim-commentary'

" https://github.com/tpope/vim-fugitive
" git wrapper
Plug 'tpope/vim-fugitive'

call plug#end()

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" commands to execute on write
autocmd BufWritePre *.yml,*.yaml,*.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Neoformat
autocmd BufWritePre *.py execute ':Black'

" neomake configuration
let g:neomake_python_enabled_markers = ['pylint']
let g:neomake_yaml_enabled_markers = ['yamllint']
call neomake#configure#automake('nrwi', 200)

set background=dark
set paste
set number
set list
set listchars=tab:>-,trail:.,extends:$,precedes:$
" set tabstop=4
" set shiftwidth=4
set tabstop=2
set shiftwidth=2
set expandtab
colorscheme delek
