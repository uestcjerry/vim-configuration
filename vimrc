set nu
set cindent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set history=1000
set linebreak
set expandtab
set mouse=a
set nobackup
set hlsearch
set incsearch
set wrap linebreak
set showbreak=" "
set ruler
set ai
set bs=2
set showcmd
set number
set cursorline
set scrolloff=4
set sidescroll=1
set sidescrolloff=15
set showmatch
syntax enable
syntax on
set splitbelow
set splitright

set so=7
set backspace=eol,start,indent
set ignorecase
set smartcase
set incsearch
set magic
set noerrorbells
set novisualbell

set foldenable
set foldmethod=manual

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb2312,big5

autocmd FileType c,cpp,py,cc set shiftwidth=4 | set expandtab


"""""vundle""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'user/L9', {'name': 'newL9'}

"vim scripts
Plugin 'taglist.vim'
Plugin 'a.vim'

"original repos on github
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'edsono/vim-matchit'
Plugin 'Valloric/ListToggle'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Yggdroot/indentLine'

call vundle#end()
filetype plugin indent on

"""""""""""YouCompleteMe""""""""""""""""

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"let g:ycm_confirm_extra_conf=0

set completeopt=longest,menu
let g:ycm_key_list_previous_completion=['<Down>']
let g:ycm_key_list_previous_completion=['<Up>']
let g:ycm_collect_identifiers_from_tags_files=1 
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_seed_identifiers_with_syntax=1

let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_comments_and_strings=0



"""""""""""syntastic""""""""""""""""""""
"let g:syntastic_mode_map = {'mode':'active','active_filetypes':[],'passive_filetypes':[]}
let g:syntastic_check_on_open=1
let g:syntastic_cpp_include_dirs=['/usr/include']
let g:syntastic_cpp_remove_include_errors=1
let g:syntastic_cpp_check_header=1
let g:syntastic_cpp_compiler='clang++'
let g:syntastic_cpp_compiler_options='-std=c++11 -Wall -stdlib=libc++ -Wextra -Wpendantic'
let g:syntastic_error_symbol='>>'
let g:syntastic_warning_symbol='!'
let g:syntastic_enable_balloons=1
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1
let g:syntastic_python_python_exec='/bin/python2'

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



""""""""""""""""color"""""""""""""""
"""""""source: /usr/share/vim/vim74/colors
"colorscheme distinguished
"colorscheme jellybeans
"colorscheme vividchalk

"colorscheme koehler  
"colorscheme peachpuff
"colorscheme desert
"colorscheme darkblue
"colorscheme delek
"colorscheme elflord
"colorscheme murphy
"colorscheme pablo
"colorscheme ron
"colorscheme shine
"colorscheme slate
"colorscheme torte
colorscheme zellner


let NERDTreeWinPos = 'left' 

""""""""""""ctags and Taglist""""""""""""""""""
let Tlist_WinWidth=34
let Tlist_Auto_Open=0
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_SingleClick=1
"let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Auto_Update=1

"" make tags file
" cd $project
" ctags -R *

""" single file generate tags, Press F12
set tags=/home/codingeveryday/pra_programming/unix_apue_src/chapter5_standard_io/tags;
set autochdir

function!UpdateTagsFile()
silent!ctags -R --c++-kinds=+p --fields=+ianS --extra=+q
endfunction
nmap <F12> :call UpdateTagsFile()<CR>

"nmap <F5> :WMToggle<CR>
nmap <F6> :Tlist<CR>
nmap <F4> zA
nmap <F3> zR
nmap <F7> :A<CR>
nmap <F8> :NERDTreeToggle<CR>
