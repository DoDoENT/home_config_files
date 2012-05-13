augroup filetypedetect
" Promela
au BufNewFile,BufRead *.promela,*.prm,*.prml    setf promela
augroup END

augroup syntax
au! BufNewFile,BufReadPost *.smv
au  BufNewFile,BufReadPost *.smv    setf smv 
augroup END
