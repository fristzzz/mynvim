syntax on
set nocompatible


"jump out
inoremap <C-l> <C-o>a

" 调整vim窗格大小
noremap <C-n> <C-w>>
noremap <C-m> <C-w><

map file :NERDTreeToggle<CR>
map func :TagbarToggle<CR>

" coc-snippets for markdown
imap <TAB> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_prev = '<c-k>'
source ~/AppData/Local/nvim/coc-ultisnips.vim

" MarkDown Tools map 
" 生成GFM目录
autocmd FileType markdown nnoremap mdc :GenTocGFM<CR>

let g:SnazzyTransparent = 1

let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }

set number
set cursorline
set wildmenu
set hlsearch
set incsearch
set ignorecase

" 缩进
set tabstop=2
set shiftwidth=2
set softtabstop=2
set scrolloff=5
set expandtab

autocmd FileType go set tabstop=4
autocmd FileType go set shiftwidth=4
autocmd FileType go set softtabstop=4

"coc settings
set termguicolors
set cmdheight=2
set updatetime=300

"md-img-paste
autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>
let g:mdip_imgdir = 'markdown_pictures'
let g:mdip_imgname = 'image'


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
      \ 'coc-tsserver',
      \ 'coc-css',
      \ 'coc-java',
      \ 'coc-eslint',
      \ 'coc-tslint-plugin',
      \ 'coc-pairs',
      \ 'coc-highlight',
      \ 'coc-snippets',
      \ 'coc-git',
      \ 'coc-ultisnips',
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

"tools
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'mbbill/undotree'

"markdown tools
Plug 'ferrine/md-img-paste.vim'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'mzlogin/vim-markdown-toc'

"coding tools
Plug 'jiangmiao/auto-pairs'

" gotools
Plug 'fatih/vim-go'

"Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

lua require'colorizer'.setup()

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


" Theme
colorscheme snazzy

" rainbow
let g:rainbow_active=1
source ~/AppData/Local/nvim/rainbow_conf.vim

set rtp+=/usr/lib/python3.5/dist-packages/powerline/bindings/vim
