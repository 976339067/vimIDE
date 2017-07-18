"---------------------------------general configure begin-------------------------------------
set number

"设置（软）制表符宽度为4：
set tabstop=4
set expandtab
"对于已保存的文件，可以使用下面的方法进行空格和TAB的替换:
%retab!

"设置缩进的空格数为4:
set softtabstop=4
set shiftwidth=4

"设置使用 C/C++ 语言的自动缩进方式:
set cindent
"---------------------------------general configure end----------------------------------------------



"-------------------------------------pathogen configure begin -------------------------------------------------
call pathogen#infect()
"-------------------------------------pathogen configure end ------------------------------------------------------



"---------------------------------auto update ctags and taglist functtion begin-------------------------------------
"ctags
"create ctags
"ctags -R --c++-kinds=+px --fields=+iaS --extra=+q

function! UpdateCtags()
	let curdir=getcwd()
	while !filereadable("./tags")
		cd ..
		if getcwd() == "/"
			break
		endif
	endwhile
	if filewritable("./tags")
		!ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q
		TlistUpdate
	endif

	execute ":cd " . curdir
endfunction


"nmap <F5> :call UpdateCtags()<CR>

"save
autocmd BufWritePost *.c,*.h,*.cpp call UpdateCtags()
"-------------------------------auto update ctags and taglist functtion end----------------------------------------------



"------------------------------------taglist configure begin ---------------------------------------------------------
filetype on
let Tlist_Auto_Open = 1
let Tlist_Compact_Format=1
let Tlist_Display_Prototype=1
let Tlist_File_Fold_Auto_Close=1
"nnoremap <silent> <F8> :TlistToggle<CR> "使用快捷键F8来打开taglist列表，可以根据自己的喜好进行设置 
"------------------------------------taglist configure end ----------------------------------------------------------



"------------------------------------winManager configure begin ---------------------------------------------------------
let g:winManagerWindowLayout = "TagList|FileExplorer"
let g:winManagerWidth = 35
"nmap <silent> <F7> :WMToggle<cr> "使用快捷键F7打开WinManager和taglist，可根据喜好自行设置  
"------------------------------------winManager configure end ----------------------------------------------------------




