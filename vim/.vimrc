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

" Tab setting
set tabstop=4

syntax enable
