filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
syntax on
filetype plugin indent on

"let g:jedi#popup_on_dot = 0
"let g:jedi#autocompletion_command = "<C-l>"

set encoding=utf-8
set termencoding=utf-8
"set enc=chinese
"set fenc=chinese
"set fencs=utf-8
set fileencodings=utf-8
set langmenu=zh_CN.UTF-8

set incsearch
set showmatch

"set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
"set autoindent

set backspace=eol,start,indent
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]
set laststatus=2

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"   Force Saving Files that Require Root Permission
cmap w!! %!sudo tee > /dev/null %

"Smart way to move btw. window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Normal Mode, Visual Mode, and Select Mode,
" use <Tab> and <Shift-Tab> to indent
" @see http://c9s.blogspot.com/2007/10/vim-tips.html
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

augroup filetypedetect
au! BufNewFile,BufRead *.as  setf actionscript
augroup END

highlight Pmenu ctermbg=darkblue gui=bold

map nt :NERDTreeToggle<cr>

let g:tagbar_usearrows = 1

nnoremap <leader>l :TagbarToggle<CR>
map tt :TagbarToggle<cr>

"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
"let Tlist_Show_One_File=1
"let Tlist_File_Fold_Auto_Close=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_Use_Right_Window=1
"let Tlist_Show_Menu=1
"let Tlist_Auto_Open=1
"map tt :TlistToggle<cr>

" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function RemoveTrailingWhitespace()
" if &ft != "diff"
if &ft == "python"
    let b:curcol = col(".")
    let b:curline = line(".")
    silent! %s/\s\+$//
    silent! %s/\(\s*\n\)\+\%$//
    call cursor(b:curline, b:curcol)
endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()

" fix crontab -e on osx
set backupskip=/tmp/*,/private/tmp/*

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

"set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="high"
"let g:solarized_visibility="high"
"colorscheme solarized
