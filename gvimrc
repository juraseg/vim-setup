#colorscheme autumn
colorscheme desert
set gfn=Iosevka\ 12
set lines=51
set columns=178

cabbrev csd colorscheme autumn
cabbrev csn colorscheme desertEx

" Ctrl-F2 - покзать/скрыть меню
map <silent> <C-F2> :if &guioptions =~# 'm' <Bar> set guioptions-=m <Bar> else <Bar> set guioptions+=m <Bar> endif<CR>

