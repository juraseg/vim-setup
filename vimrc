" pathogen settings
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible

" Показывать положение курсора всё время.
set ruler  

" Показывать незавершённые команды в статусбаре
set showcmd  

" Включаем нумерацию строк
set nu

" Фолдинг по отсупам
set foldmethod=indent

" Поиск по набору текста (очень полезная функция)
set incsearch

" Отключаем подстветку найденных вариантов, и так всё видно.
set hlsearch

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=7

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb=   

" Поддержка мыши
set mouse=a
set mousemodel=popup
" Скрывать указатель мыши, когда печатаем
set mousehide

" Кодировка текста по умолчанию
set termencoding=utf-8
" возможные кодировки файлов и последовательность определения.
set fileencodings=utf8,cp1251

set encoding=utf8

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Скрыть панель в gui версии ибо она не нужна
set guioptions-=T

" Сделать строку команд высотой в одну строку
set ch=1

" Включить автоотступы
set autoindent

" Влючить подстветку синтаксиса
syntax on

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Преобразование Таба в пробелы
set expandtab

" Размер табулации по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Формат строки состояния
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [ENCODING=%{&encoding}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2b]\ [POS=%04l,%0.4v][%p%%]\ [LEN=%L]
set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

filetype indent on

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages


"-------------------------
" Горячие клавишы
"-------------------------

" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

" CTRL-F для omni completion
imap <C-F> <C-X><C-O>
imap <C-Space> <C-X><C-O>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gpa
vmap <C-V> d<esc>"+gP

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" C-l - автоформатирование отступов всего файла
nmap <C-t> gg=G

" C-d - дублирование текущей строки
imap <C-d> <esc>yypi

" Поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" Хоткеи для NERDTree
nmap <C-N>v :NERDTree<cr>
vmap <C-N>v <esc>:NERDTree<cr>i
imap <C-N>v <esc>:NERDTree<cr>i

nmap <C-N>x :NERDTreeClose<cr>
vmap <C-N>x <esc>:NERDTreeClose<cr>i
imap <C-N>x <esc>:NERDTreeClose<cr>i

nmap <C-N>t :NERDTreeToggle<cr>
vmap <C-N>t <esc>:NERDTreeToggle<cr>i
imap <C-N>t <esc>:NERDTreeToggle<cr>i

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i


" F3 - просмотр ошибок
nmap <F3> :cwindow<cr>
vmap <F3> <esc>:cwindow<cr>
imap <F3> <esc>:cwindow<cr>

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - предыдущий буфер
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F8 - удалить буфер
map <F8> :bd<cr>
vmap <F8> <esc>:bd<cr>
imap <F8> <esc>:bd<cr>

" F9 - показать/скрыть панель проектов
nmap <silent> <F9> <Plug>ToggleProject

" F10 - показать окно NERDTree
map <F10> :NERDTreeToggle<cr>
vmap <F10> <esc>:NERDTreeToggle<cr>i
imap <F10> <esc>:NERDTreeToggle<cr>i

" F11 - показать окно Taglist
map <F11> :TagbarToggle<cr>
vmap <F11> <esc>:TagbarToggle<cr>
imap <F11> <esc>:TagbarToggle<cr>
"map <F11> :TlistToggle<cr>
"vmap <F11> <esc>:TlistToggle<cr>
"imap <F11> <esc>:TlistToggle<cr>

" F12 - обозреватель файлов
map <F12> :Ex<cr>
vmap <F12> <esc>:Ex<cr>i
imap <F12> <esc>:Ex<cr>i

" PHP Documenter plugin
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 

map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap <Ins> <Esc>i

" Редко когда надо [ без пары =)
imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

" открыть файл конфигурации .vimrc
map ,vv :e $MYVIMRC<CR>
" перезапустить файлы конфигурации
map ,V :so $MYVIMRC<CR> :so $MYGVIMRC<CR>

" Настройки поиска/замены
" по звездочке не прыгать на следующее найденное, а просто подсветить
nnoremap * *N
vnoremap * *N
" выключить подсветку: повесить на горячую клавишу Ctrl-F8
nnoremap <C-F8> :nohlsearch<CR>
" в визуальном режиме по команде * подсвечивать выделение
vnoremap * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>


" Включаем filetype плугин. Настройки, специфичные для определынных файлов мы разнесём по разным местам
filetype plugin on
au BufRead,BufNewFile *.phps    set filetype=php
au BufRead,BufNewFile *.thtml    set filetype=php
au BufRead,BufNewFile *.phtml    set filetype=php

" Настройки для SessionMgr
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "mysession"

"set completeopt-=preview
"set completeopt+=longest
"set mps-=[:]

" Поддержка SQL MySQL по умолчанию
if has("autocmd")
    autocmd BufRead *.sql set filetype=mysql      
endif

set t_Co=256
colorscheme wombat256

" Настройки для mini buffer explorer
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1 

" Настройки для NERDTree
let NERDTreeChDirMode = 1
let NERDTreeWinPos = "right"

" Настройки diff
set diffopt=filler,vertical

" Настройки TagList
let Tlist_Use_Right_Window = 1
let Tlist_Show_Menu = 1
let Tlist_Show_One_File = 1
let Tlist_Show_One_File = 0
let Tlist_Auto_Highlight_Tag = 1
let Tlist_WinWidth = 36
let g:Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 0

" Настройки Project Plugin
let g:proj_window_width = 36
let g:proj_window_increment = 50
let g:proj_flags = "imstT"

" Настройки SuperTab
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']

" TSkeleton options
let g:tskelUserName="Yuri Abzyanov"
let g:tskelUserEmail="yuri.abzyanov@gmail.com"
let g:tskelUserEmailInovica="yuri@inovica.com"
let g:tskelLicence = "MIT (see http://www.opensource.org/licenses/mit-license.html)"
let g:tskelLicenseInovica="Commerical"
let g:tskelDateFormat="%d-%m-%Y"

cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>
