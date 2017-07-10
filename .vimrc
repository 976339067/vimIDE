"-------------------------------------pathogen configure begin -------------------------------------------------
call pathogen#infect()
"-------------------------------------pathogen configure end ------------------------------------------------------



"------------------------------------taglist configure begin ---------------------------------------------------------
filetype on
let Tlist_Auto_Open = 1
let Tlist_Compact_Format=1
let Tlist_Display_Prototype=1
let Tlist_File_Fold_Auto_Close=1
nnoremap <silent> <F8> :TlistToggle<CR> "使用快捷键F8来打开taglist列表，可以根据自己的喜好进行设置 
"------------------------------------taglist configure end ----------------------------------------------------------


set number
