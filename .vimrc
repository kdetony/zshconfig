syntax on
set encoding=utf-8
set fileformats=unix,dos
set backup
set linebreak
set backupdir=~/backup 
set history=1000
set ignorecase
set smartcase
set hlsearch
set list
set wrap
set number
set expandtab
set tabstop=4
retab
set shiftwidth=4
set ic
set showmatch
set paste
highlight Comment ctermfg=LightCyan

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10
color desert
set cursorline
set cursorcolumn
hi CursorLine term=bold cterm=bold guibg=Grey40

function s:SetCursorLine()
    set cursorline
    hi cursorline cterm=none ctermbg=darkblue ctermfg=white
endfunction
autocmd VimEnter * call s:SetCursorLine()
