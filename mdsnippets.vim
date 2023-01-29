autocmd FileType markdown inoremap ;f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd FileType markdown inoremap ;b **** <++><Esc>F*hi
autocmd FileType markdown inoremap ;i ** <++><Esc>F*i
autocmd FileType markdown inoremap ;s ~~~~ <++><Esc>F~hi
autocmd FileType markdown inoremap ;n ---<Enter><Enter>
autocmd FileType markdown inoremap ;1 #<Space>
autocmd FileType markdown inoremap ;2 ##<Space>
autocmd FileType markdown inoremap ;3 ###<Space>
autocmd FileType markdown inoremap ;4 ####<Space>
autocmd FileType markdown inoremap ;h ====<Space><++><Esc>F=hi
autocmd FileType markdown inoremap ;l --------<Enter>
autocmd FileType markdown inoremap ;c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd FileType markdown inoremap ;m $$ <++><Esc>F$i


" vim-markdown
let g:vim_markdown_fenced_languages = ['c=cpp',
      \ 'viml=vim',
      \ 'bash=sh',
      \ 'ini=dosini',
      \ 'rust=rs',
      \ 'rs=rs',
      \ 'go=go',
      \ 'golang=go',
      \ 'python=py',
      \ 'js=js',
      \ 'javascript=js',
      \ 'ts=ts',
      \ 'typescript=ts']
