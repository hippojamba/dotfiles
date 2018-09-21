" General
syntax enable

set history=250

set cmdheight=2

set noerrorbells

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

"Theme init
"URL: https://github.com/koirand/tokyo-metro.vim
try
    colo tokyo-metro
catch
endtry

" Indentation
set expandtab

set smarttab

set shiftwidth=4
set tabstop=4
