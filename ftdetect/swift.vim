au BufNewFile,BufRead *.swift set ft=swift

fun! s:checkSwift()
    let swiftShebangs = [ '#!/usr/bin/env swift', '#!/usr/bin/swift']
    if (index(swiftShebangs, getline(1)) >= 0)
        set ft=swift
    endif
endfun
autocmd BufNewFile,BufRead * call s:checkSwift()
