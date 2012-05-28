function! MyMappings()
imap <C-Space> <C-X><C-O>
imap <S-Enter> <Esc>o
imap <C-S-Enter> <Esc>O
imap <C-Z> <Esc>u
imap <C-Y> <Esc><C-R>
imap <C-D> <Esc>dda

map <S-Enter> o
map <C-S-Enter> O
map <C-Z> u
map <C-Y> <C-R>
map <C-D> dd

map <C-V> "+gP
imap <C-V> <Esc>"+gPa
map <C-C> "+y
map <C-X> "+d 
" build tags of your own project with Ctrl+F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+aiKlmnSzt --extra=+q .
map <C-s> :wa<CR>
imap <C-s> <Esc>:wa<CR>
map <C-Tab> :A<CR>
map <C-B> :wa<CR>:make<CR>
map <A-Left> :bp!<CR>
map <A-Right> :bn!<CR>
map <A-l> :bn!<CR>
map <A-h> :bp!<CR>
map <A-j> :$<CR>
map <A-k> :1<CR>

map H ^
map L $
map K <PageUp>
map J <PageDown>

map > <C-W>>
map < <C-W><
map + <C-W>+
map - <C-W>-

map <C-W>c :Bclose<CR>
endfunction
