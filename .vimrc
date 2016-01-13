colo jellybeans
"colo solarized
"let g:solarized_termcolors=256
"set background=dark

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set encoding=utf8
set termencoding=utf8
set fileencoding=utf8
set fileencodings=utf-8,chinese,cp936,gb18030,big5,euc-jp,euc-kr,latin1
let &termencoding=&encoding

"cross highlight
"set cuc cul
"just col highlight
set cuc

"set fdm=indent

execute pathogen#infect()
call pathogen#helptags()

nmap <F7> :NERDTree<CR>
nmap <F8> :TlistToggle<CR>
nmap <F9> :WMToggle<CR>

nmap <F2> :!ctags -R<CR>
nmap <F3> :!cscope -Rbkq<CR>
"nmap <F4> :cs add cscope.out<CR>
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif
nmap <F4> :cw<CR>
nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-c> :cs find c <C-R><C-W><CR>


let g:NERDTree_title="[NERDTree]" 
let g:winManagerWindowLayout="NERDTree|TagList"
function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
  
function! NERDTree_IsValid()  
    return 1  
endfunction  
  
set laststatus=2
set t_Co=256 
let g:airline_theme="murmur"

filetype on

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

"Python auto complete
let g:pydiction_location = '/home/molin/.vim/tools/pydiction-1.2/complete-dict'


"Mappin for python
map [r :! python % <CR>  
map [o :! python -i % <CR>  
map [t :! rst2html.py % %<.html <CR>  

set hlsearch
set nobackup
set nocompatible
set ruler
set showcmd
set showmatch
syntax on
set autoindent cindent cinoptions=g0
set backspace=indent,eol,start
if has("autocmd")  
    "回到上次文件打开所在行  
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")  
        \| exe "normal g'\"" | endif  
    "自动检测文件类型，并载入相关的规则文件  
    filetype plugin on  
    filetype indent on  
    "智能缩进，使用4空格，使用全局的了  
    "autocmd FileType python setlocal et | setlocal sta | setlocal sw=4  
    autocmd FileType python setlocal et | setlocal sw=4  
    autocmd FileType c setlocal et | setlocal sta | setlocal sw=4  
    autocmd FileType h setlocal et | setlocal sta | setlocal sw=4  
endif
