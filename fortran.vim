" This is my ~/.vim/ftplugin/fortran.vim
" It defines some usefull debugging commands and makes Airline display
" current subroutine name.
" 
" Note: Requires 'set ignorecase'. Also requires Airline but only for
" displaying current subroutine.


"-------------start of declarations-------------------

function! MyFortran_DebugComment()
    let s:line = getline(".")
    call setline(line("."), s:cout_str.s:line)
endfunction



function! MyFortran_DebugInsert()
    let s:cin_list = [s:cin_str.' v-v-v-v-v-v-v-v-v-v-v',
                \     s:cin_str.' ^-^-^-^-^-^-^-^-^-^-^']
    call append(line("."), s:cin_list)
    call cursor(line(".")+1, 0)
    normal! o    
    startinsert!
endfunction



function! MyFortran_GetCurrentSubroutineStats()
    let s:subr_end_ln   = search('^\s*\<end\>', 'nW', 0)
    if s:subr_end_ln == 0
        return ['nosubroutine',0,0]
    endif
    let s:subr_next_ln = search('^\s*\<subroutine\>', 'nW', 0)
    if s:subr_next_ln != 0
        if s:subr_next_ln < s:subr_end_ln
            return ['nosubroutine',0,0]
        endif
    endif
    let s:subr_start_ln = search('^\s*\<subroutine\>', 'nbW', 0)
    if s:subr_start_ln == 0
        return ['nosubroutine',0,0]
    endif
    let s:subr_name = MyFortran_GetSubroutineName(s:subr_start_ln)
    return [s:subr_name, s:subr_start_ln, s:subr_end_ln]
endfunction



function! MyFortran_GetSubroutineName(ln)
    let s:line = getline(a:ln)
    let s:line = substitute(s:line,'^\s*\<subroutine\>\s*','','')
    let s:line = substitute(s:line,'\s*(.*$','','')
    return s:line
endfunction



function! MyFortran_GetCurrentSubroutineCalls()
    let s:save_curpos = getpos(".")

    let s:cs_stats = MyFortran_GetCurrentSubroutineStats()
    if s:cs_stats[0] == 'nosubroutine'
        echoe 'FortranDebugScripts:  Not inside any subroutine'
        return
    endif

    let s:calls_list_lns = []
    call cursor(s:cs_stats[1],0)
    while search("^[ ]*call[ ]*", 'W', s:cs_stats[2])
        call add(s:calls_list_lns, line("."))
    endwhile

    call setpos(".", s:save_curpos)

    return s:calls_list_lns
endfunction



function! MyFortran_GetSubroutineCalled()
    let s:line = getline(".")
    let s:line = substitute(s:line, '^\s*\<call\>\s*','','')
    let s:line = substitute(s:line,'\s*(.*$','','')
    return s:line
endfunction

"-------------end of declarations-------------------

"------- configuration -------------
let s:cout_str = '!--basil_debug--'
let s:cin_str =  '!++basil_debug++'
let s:fwrite = 'write(*,*) '
"------- end of configuration ------


"Note: Not sure if it's the best way to do this but...
let g:airline_section_b = '%{MyFortran_GetCurrentSubroutineStats()[0]}'
AirlineRefresh


noremap <leader>do :call MyFortran_DebugComment()
noremap <leader>di :call MyFortran_DebugInsert()
"noremap <leader>dw :call MyFortran_WriteCall()
"noremap <leader>de :call MyFortran_WriteEveryCall()

noremap \wc :w:!gfortran %
noremap \wr :w:!if gfortran %; then ./a.out; fi


