"
"====================vendle setting ===================
"
set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'SrcExpl'
Plugin 'taglist.vim'
Plugin 'bufexplorer.zip'
Plugin 'https://github.com/scrooloose/nerdtree'
"Plugin 'https://github.com/Lokaltog/vim-powerline.git'
Plugin 'wesQ3/vim-windowswap'
Plugin 'morhetz/gruvbox'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on     " required!

"
"========= running mode setting =========
"
"if has("gui_running")
"set guifont=Monaco:h11

"VI 시작 크기 설정
"au GUIEnter * winsize 180 80
"VI 시작 위치 설정
"au GUIEnter * winpos 0 0
"Full Screen Start
"if has("win32")
    "au GUIEnter * simalt ~x
"endif

"set background=dark
"colorscheme solarized
"colorscheme molokai 
"colorscheme wombat256mod
"set lines=999 columns=999
"set guioptions-=m
"set guioptions-=T
"else
"set background=dark
"colorscheme wombat256mod
"endif

set background=dark
colorscheme gruvbox
"
"========= default variables setting =========
"
"syntax on
syntax enable
set fileencodings=utf-8,euc-kr
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set isk+=_,$,@,%,#,- " none of these should be word dividers, so make them not be
" 항상 status 라인을 표시하도록 함
set ls=2
" status 라인이 어떻게 나오게 할 지 지정
"set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
"set statusline=\ %f\ %m%h%r\ [%P]\ %a\ %<%l:%v\
set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
set laststatus=2

set ignorecase
"set hls
set autoindent 		" 자동으로 들여쓰기를 한다.
set cindent 		" C 프로그래밍을 할때 자동으로 들여쓰기를 한다.
set smartindent 	" 좀더 똑똑한 들여쓰기를 위한 옵션이다.
"set textwidth=79 " 만약 79번째 글자를 넘어가면 
"set wrap " 자동으로 를 삽입하여 다음 줄로 넘어간다.
"set nowrapscan " 검색할 때 문서의 끝에서 다시 처음으로 돌아가지 않는다.
set nobackup 		" 백업 파일을 만들지 않는다.
set visualbell 		" 키를 잘못눌렀을 때 삑 소리를 내는 대신 번쩍이게 한다.set ruler " 화면 우측 하단에 현재 커서의 위치(줄,칸)를 보여준다.
set tabstop=4 		" Tab을 눌렀을 때 8칸 대신 4칸 이동하도록 한다.
set shiftwidth=4 	" 자동 들여쓰기를 할때 4칸 들여쓰도록 한다.
set nu
set incsearch
"set autochdir
" Tab 자동 완성시 가능한 목록을 보여줌
set wmnu
set path=.,$HOME/mount/vm100/usr/include,./include,../include,../../include,../../../include,../../../../include,/usr/include

" 
"========= auto format =========
"
ab myname   Lee Won-Cheol (wclee@wisetodd.com)
ia time		<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"auto colortheme read file type
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd BufRead,BufNewFile *.txt	colo koehler
"autocmd BufRead,BufNewFile *.sql 	colo elflord

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" configure expanding of tabs for various file types
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set et ts=4
au BufRead,BufNewFile *.hpp  set filetype=cpp
"au BufRead,BufNewFile *.py set expandtab
"au BufRead,BufNewFile *.c set noexpandtab
"au BufRead,BufNewFile *.cpp set noexpandtab
"au BufRead,BufNewFile *.h set noexpandtab
"au BufRead,BufNewFile Makefile* set noexpandtab

au FileType c retab
au FileType cpp retab
au FileType python retab
au Filetype make set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"auto colortheme read file type
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd BufRead,BufNewFile *.txt     colo koehler
"autocmd BufRead,BufNewFile *.sql      colo elflord


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
nmap <F7> :TlistToggle<CR>
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1
"let Tlist_Process_File_Always = 0
"let Tlist_Enable_Fold_Column = 0
"let Tlist_Display_Tag_Scope = 1
"let Tlist_Display_Prototype = 1
"let Tlist_File_Fold_Auto_Close = 1
"let Tlist_WinWidth = 40
"let Tlist_Show_One_File = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SrcExpl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F6> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l

let g:SrcExpl_winHeight = 8
let g:SrcExpl_refreshTime = 100
let g:SrcExpl_jumpKey = "<ENTER>"
let g:SrcExpl_gobackKey = "<SPACE>"
let g:SrcExpl_isUpdateTags = 0
let g:SrcExpl_pluginList = [ 
				\ "__Tag_List__", 
                \ "_NERD_tree_", 
                \ "Source_Explorer" 
                \ ] 
" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 
" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 
" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F8> :NERDTreeToggle<CR>
let NERDTreeWinPos="left"
let g:NERDTreeDirArrows=1
let NERDTreeIgnore=['\.o$', 'cscope.', 'tags', '\~$']
"autocmd vimenter * NERDTree
"auto close if the only window
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
map <F2> v]}zf	
map <F3> zo		

map <F5> :BufExplorer<cr>

map <PageUp> <C-U><C-U>
map <PageDown> <C-D><C-D>

"Vim 내의 창 크기 조절
"nmap <s-h> <C-W><
"nmap <s-j> <C-W>-
"nmap <s-k> <C-W>+
"nmap <s-l> <C-W>>
"
"Vim 내에서 창 간 이동
"nmap <c-h> <c-w>h
"nmap <c-j> <c-w>j 
"nmap <c-k> <c-w>k 
"nmap <c-l> <c-w>l 

"map F12 to generate ctags for current folder:
"map <F12> :!/usr/local/bin/ctags -R<CR>
"map <ctrl>+F12 to generate ctags for current folder:
"map <C-F12> :!/usr/local/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"========= switch between file buffers ========
map ,x :bn!<CR>	  " Switch to Next File Buffer
map ,z :bp!<CR>	  " Switch to Previous File Buffer
map ,w :bw<CR>	  " Close Current File Buffer

map ,1 :b!1<CR>	  " Switch to File Buffer #1
map ,2 :b!2<CR>	  " Switch to File Buffer #2
map ,3 :b!3<CR>	  " Switch to File Buffer #3
map ,4 :b!4<CR>	  " Switch to File Buffer #4
map ,5 :b!5<CR>	  " Switch to File Buffer #5
map ,6 :b!6<CR>	  " Switch to File Buffer #6
map ,7 :b!7<CR>	  " Switch to File Buffer #7
map ,8 :b!8<CR>	  " Switch to File Buffer #8
map ,9 :b!9<CR>	  " Switch to File Buffer #9
map ,0 :b!0<CR>	  " Switch to File Buffer #0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tag=./tags;/.
" add current directory's generated tags file to available tags
set tags+=./tags
"set tags=./tags,../tags
"
if version >= 500
func! Sts()
	let st = expand("<cword>")
	exe "sts ".st
endfunc
nmap ,st :call Sts()<cr>

func! Tj()
	let st = expand("<cword>")
	exe "tj ".st
endfunc
nmap ,tj :call Tj()<cr>

func! Tn()
	exe "tn"
endfunc
nmap ,tn :call Tn()<cr>

func! Tp()
	exe "tp"
endfunc
nmap ,tp :call Tp()<cr>

func! Tr()
	exe "tr"
endfunc
nmap ,tr :call Tr()<cr>

func! Tl()
	exe "tl"
endfunc
nmap ,tl :call Tl()<cr>

endif

"======== cscope setting ========
set csprg=/usr/local/bin/cscope
set csto=0
set cst

func! Csw()
	exe "cs show"
endfunc
nmap ,csw :call Csw()<cr>

func! Csc()
	let csc = expand("<cword>")
	new
	exe "cs find c ".csc
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,csc :call Csc()<cr>

func! Csd()
	let csd = expand("<cword>")
	new
	exe "cs find d ".csd
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,csd :call Csd()<cr>

func! Cse()
	let cse = expand("<cword>")
	new
	exe "cs find e ".cse
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,cse :call Cse()<cr>

func! Csf()
	let csf = expand("<cword>")
	new
	exe "cs find f ".csf
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,csf :call Csf()<cr>

func! Csg()
	let csg = expand("<cword>")
	new
	exe "cs find g ".csg
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,csg :call Csg()<cr>

func! Csi()
	let csi = expand("<cword>")
	new
	exe "cs find i ".csi
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,csi :call Csi()<cr>

func! Css()
	let css = expand("<cword>")
	new
	exe "cs find s ".css
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,css :call Css()<cr>

func! Cst()
	let cst = expand("<cword>")
	new
	exe "cs find t ".cst
	if getline(1) == ""
		exe "q!"
	endif
endfunc
nmap ,cst :call Cst()<cr>


if filereadable("cscope.out")
	set nocsverb
	cs add cscope.out
	set csverb
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" csupport
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map  <silent><F7>    <Esc>:cprevious<CR>
"map  <silent><F8>    <Esc>:cnext<CR>
"let g:C_SourceCodeExtensions  = 'hpp c cc cp cxx cpp CPP c++ C i ii'
"let g:C_Ctrl_j = 'off'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set csprg=/usr/local/bin/cscope 
"set csto=0 
"set cst 
"set nocsverb 
"
"if filereadable("cscope.out")
"      cs add cscope.out
""CSCOPE_DB ==> [zsh,bash]rc
"elseif $CSCOPE_DB != ""
"      cs add $CSCOPE_DB
"endif
"
"set csverb

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tohtml
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
":map <F2> :TOhtml<enter>:wq<enter>:n<enter><F2>

"====,ma===== man page setting =============
"func! Man()
"	let sm = expand("<cword>")
"	exe "!man -S 2:3:4:5:6:7:8:9:tcl:n:l:p:o ".sm
"endfunc
"nmap ,ma :call Man()<cr><cr>

"====,mk===== make setting =============
"let startdir = getcwd()
"func! Make()
"	exe "!cd ".startdir
"	exe "make"
"endfunc
"nmap ,mk :call Make()<cr><cr>

"====,h====== hexViewer setting =============
let b:hexViewer = 0
func! Hv()
        if (b:hexViewer == 0)
                let b:hexViewer = 1
                exe "%!xxd"
        else
                let b:hexViewer = 0
                exe "%!xxd -r"
        endif
endfunc
nmap ,h :call Hv()<cr>

"============ file buffer CleanClose =============
"func! CleanClose(tosave)
"if (a:tosave == 1)
"	w!
"endif
"let todelbufNr = bufnr("%")
"let newbufNr = bufnr("#")
"if ((newbufNr != -1) && (newbufNr != todelbufNr) && buflisted(newbufNr))
"	exe "b".newbufNr
"else
"	bnext
"endif
"
"if (bufnr("%") == todelbufNr)
"	new
"endif
"	exe "bd".todelbufNr
"endfunc
"
"nmap ,cf :call CleanClose(0)<cr>

"============ open CWD =============
"nmap ,od :e ./<cr>


"============ project specific settings =============
if filereadable(".project.vimrc")
	source .project.vimrc
endif

"========= solarized scheme =======
"syntax enable
set t_Co=256
"let g:solarized_termcolors=256
"colorscheme solarized
"==================================

"========= quick task =======
let g:quicktask_autosave = 1


"========= GNU Global =======
"nmap <C-n> :cn<CR>
"nmap <C-p> :cp<CR>
"nmap <C-]><C-\> :GtagsCursor<CR>
"
":map <C-]> :Gtags<CR><CR>
":map <C-\> :Gtags -r<CR><CR>
":map <F10> :cclose<CR>
":map <F11> :cp<CR>
":map <F12> :cn<CR>
