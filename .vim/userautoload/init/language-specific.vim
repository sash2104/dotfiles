" language specific settings
if has("autocmd")
  " Indent
  " sw:shiftwidth, sts:softtabstop, ts:tabstop
  " tabstop should be default (8).
  autocmd FileType apache     setlocal sw=4 sts=4 ts=8 et
  autocmd FileType aspvbs     setlocal sw=4 sts=4 ts=8 et
  autocmd FileType c          setlocal sw=4 sts=4 ts=8 et
  autocmd FileType cpp        setlocal sw=4 sts=4 ts=8 et
  autocmd FileType cs         setlocal sw=4 sts=4 ts=8 et
  autocmd FileType css        setlocal sw=2 sts=2 ts=8 et
  autocmd FileType diff       setlocal sw=4 sts=4 ts=8 et
  autocmd FileType eruby      setlocal sw=4 sts=4 ts=8 et
  autocmd FileType html       setlocal sw=2 sts=2 ts=8 et
  autocmd FileType java       setlocal sw=4 sts=4 ts=8 et
  autocmd FileType javascript setlocal sw=2 sts=2 ts=8 et
  autocmd FileType perl       setlocal sw=4 sts=4 ts=8 et
  autocmd FileType php        setlocal sw=4 sts=4 ts=8 et
  autocmd FileType python     setlocal sw=4 sts=4 ts=8 et
  autocmd FileType ruby       setlocal sw=2 sts=2 ts=8 et
  autocmd FileType haml       setlocal sw=2 sts=2 ts=8 et
  autocmd FileType sh         setlocal sw=4 sts=4 ts=8 et
  autocmd FileType sql        setlocal sw=4 sts=4 ts=8 et
  autocmd FileType vb         setlocal sw=4 sts=4 ts=8 et
  autocmd FileType vim        setlocal sw=2 sts=2 ts=8 et
  autocmd FileType wsh        setlocal sw=4 sts=4 ts=8 et
  autocmd FileType xhtml      setlocal sw=4 sts=4 ts=8 et
  autocmd FileType xml        setlocal sw=4 sts=4 ts=8 et
  autocmd FileType yaml       setlocal sw=2 sts=2 ts=8 et
  autocmd FileType zsh        setlocal sw=4 sts=4 ts=8 et
  autocmd FileType scala      setlocal sw=2 sts=2 ts=8 et

  " Disable preview window in completion
  autocmd FileType python setl completeopt-=preview
endif
