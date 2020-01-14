au BufNewFile,BufRead *.swift set ft=swift
au BufNewFile,BufRead * call s:checkSwift()

fun! s:checkSwift()

  if !empty(&ft)
    return
  endif

  let line = getline(0)
  if line =~~"^#.swift"
    set ft=swift
  endif

endfun
