" Vim syntax file
" Maintainer: szorfein
" Language: GPG Passwords

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

let s:cpo_save = &cpo
set cpo&vim

" syntax case ignore

syntax match gpassTitle "^[A-Z]*[a-z]\+\s*[^{]\+"
syntax match gpassKeyword "^\s\+[a-z]\+[^:]"
syntax match gpassPwd "\(\(pass\)\@<=\)\(.*\W.*\)\(.*\d.*\)\([A-Za-z0-9\S]\)"

if version >= 508 || !exists("did_gp_syn_inits")
    if version < 508
        let did_gp_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif

    HiLink gpassTitle         Statement
    HiLink gpassKeyword       String 
    HiLink gpassPwd           Special
    delcommand HiLink
endif

let b:current_syntax = "gpgpass"
let &cpo = s:cpo_save
unlet s:cpo_save
