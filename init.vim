syntax on
syntax enable
filetype plugin indent on
set nocompatible

set number
set wildmenu
set hlsearch
set incsearch
set ignorecase


" 缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=7
set expandtab

" 折叠
set foldmethod=indent
set foldlevelstart=99

" autocmd FileType go set tabstop=4
" autocmd FileType go set shiftwidth=4
" autocmd FileType go set softtabstop=4

" transparent
set pumblend=20
hi PmenuSel blend=20

set winblend=20
set winblend=20



"jump out
inoremap <C-l> <C-o>a

" 调整vim窗格大小
noremap <C-n> <C-w>>
noremap <C-m> <C-w><

" 取消高亮
noremap <C-h> :noh<CR>

map file :NERDTreeToggle<CR>

" coc-snippets for markdown
imap <TAB> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_prev = '<c-k>'
source ~/AppData/Local/nvim/coc-ultisnips.vim

source ~/AppData/Local/nvim/markdown-settings.vim
source ~/AppData/Local/nvim/mdsnippets.vim
" source ~/AppData/Local/nvim/ultisnips.vim

" MarkDown Tools map
" 生成GFM目录
autocmd FileType markdown nnoremap mdc :GenTocGFM<CR>

let g:SnazzyTransparent = 1

let g:lightline = {
                  \ 'colorscheme': 'snazzy',
                  \ }



"md-img-paste
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>
let g:mdip_imgdir = 'markdown_pictures'
let g:mdip_imgname = 'image'

" html

"autofmt
" au BufWrite * :Autoformat

if has("nvim-0.5.0") || has("patch-8.1.1564")
      set signcolumn=number
else
      set signcolumn=yes
endif


"coc extensions
let g:coc_global_extensions = [
                  \ 'coc-json',
                  \ 'coc-vimlsp',
                  \ 'coc-html',
                  \ 'coc-css',
                  \ 'coc-java',
                  \ 'coc-eslint',
                  \ 'coc-prettier',
                  \ 'coc-pairs',
                  \ 'coc-highlight',
                  \ 'coc-git',
                  \ 'coc-snippets',
                  \ 'coc-ultisnips',
                  \ 'coc-json',
                  \ 'coc-rust-analyzer',
                  \ 'coc-emoji',]
"coc configs

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


"plugins
call plug#begin()

"styles
Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'norcalli/nvim-colorizer.lua'
" Plug 'junegunn/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'


" NERDTree highlight
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

"tools
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'preservim/tagbar'

"markdown tools
Plug 'ferrine/md-img-paste.vim'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'mzlogin/vim-markdown-toc'

"coding tools
Plug 'jiangmiao/auto-pairs'

" gotools
Plug 'fatih/vim-go'

" rust tools
Plug 'rust-lang/rust.vim'

"Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" snipptes
"Plug 'SirVer/ultisnips'

" html
Plug 'mattn/emmet-vim'
Plug 'Chiel92/vim-autoformat'

" haskell
Plug 'hasufell/ghcup.vim'
Plug 'rbgrouleff/bclose.vim'
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'

call plug#end()

" lua require'colorizer'.setup()

"airline theme
let g:airline_theme="onedark"

" vim-go
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 0
let g:go_highlight_functions = 1
let g:go_highlight_types = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_template_autocreate = 0
let g:go_highlight_fields = 1

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" rust-lang
let g:rustfmt_autosave = 1


" Theme
colorscheme snazzy

" rainbow
let g:rainbow_active=1
source ~/AppData/Local/nvim/rainbow_conf.vim

"coc settings
set termguicolors
set cmdheight=2
set updatetime=300

set pumblend=15
set pumheight=10
hi CocMenuSel ctermbg=237 guibg=#6d7ed6

set rtp+=/usr/lib/python3.5/dist-packages/powerline/bindings/vim
