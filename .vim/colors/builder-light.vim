set background=light
highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name = "builder-light"

hi Normal       ctermfg=0 ctermbg=7
hi Special      ctermfg=13 ctermbg=NONE
hi Comment      ctermfg=15 ctermbg=NONE
hi Constant     ctermfg=5 ctermbg=NONE
hi String       ctermfg=12  ctermbg=NONE
hi Number       ctermfg=13 ctermbg=NONE
hi htmlTagName  ctermfg=2 ctermbg=NONE
hi Identifier   ctermfg=13 ctermbg=NONE
hi Statement    ctermfg=10 ctermbg=NONE
hi Boolean      ctermfg=5 ctermbg=NONE
hi PreProc      ctermfg=14 ctermbg=NONE
hi Type         ctermfg=10 ctermbg=NONE
hi Function     ctermfg=6 ctermbg=NONE
hi Repeat       ctermfg=4 ctermbg=NONE
hi Operator     ctermfg=11 ctermbg=NONE
hi Error        ctermfg=9   ctermbg=NONE
hi TODO         ctermfg=13 ctermbg=NONE
hi linenr       ctermfg=15 ctermbg=NONE
hi CursorLineNR ctermfg=7 ctermbg=NONE cterm=bold

hi Visual          ctermfg=0 ctermbg=6
hi SpecialKey      ctermfg=8 ctermbg=NONE
hi NonText         ctermfg=0 ctermbg=NONE
hi ExtraWhitespace             ctermbg=NONE
hi MatchParen      ctermfg=8 ctermbg=15
hi Pmenu           ctermfg=8 ctermbg=4
hi PmenuSel        ctermfg=8 ctermbg=12

hi DiffAdd        ctermfg=NONE ctermbg=2
hi DiffDelete     ctermfg=NONE ctermbg=1

hi ColorColumn             ctermbg=11

match ExtraWhitespace /\s\+$/

hi link character	      constant
hi link number	        constant
hi link boolean	        constant
hi link Float		        Number
hi link Conditional	    Repeat
hi link Label		        Statement
hi link Keyword	        Statement
hi link Exception	      Statement
hi link Include	        PreProc
hi link Define	        PreProc
hi link Macro		        PreProc
hi link PreCondit	      PreProc
hi link StorageClass	  Type
hi link Structure	      Type
hi link Typedef	        Type
hi link htmlTag	        Special
hi link Tag		          Special
hi link SpecialChar	    Special
hi link Delimiter	      Special
hi link SpecialComment  Special
hi link Debug		        Special

" sytnax specific

" HTML Highlighting
hi link htmlTag       Identifier
hi link htmlTagName   Identifier
hi link htmlArg       Statement
hi link htmlScriptTag Exception
hi link htmlSpecialTagName Exception

" Diff Highlighting
hi link diffAdded   DiffAdd
hi link diffRemoved DiffDelete

" javascript (ala vim-javascript-syntax)
hi javaScriptFuncArg ctermfg=14 ctermbg=NONE
hi javaScriptFuncExp ctermfg=0
hi javaScriptBraces                           cterm=NONE

hi link javaScriptDocTags Comment


" go (ala vim-go)
hi gotypes     ctermfg=10 ctermbg=NONE
hi goDirective ctermfg=14 ctermbg=NONE

hi link goTodo         TODO
hi link goType         gotypes
hi link goSignedInts   gotypes
hi link goUnsignedInts gotypes
hi link goFloats       gotypes
hi link goComplexes    gotypes

hi goOperator    ctermfg=11
hi goBuiltins    ctermfg=0
hi goDeclaration ctermfg=8
hi goDeclType    ctermfg=4

hi goFunction  ctermfg=0 ctermbg=NONE
hi goMethod    ctermfg=0 ctermbg=NONE
hi goStruct    ctermfg=0 ctermbg=NONE
hi goStructDef ctermfg=8 ctermbg=NONE


" NerdTree
hi link NERDTreeDir Special
hi NERDTreeFile     ctermfg=0
