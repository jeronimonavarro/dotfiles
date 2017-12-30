set background=light
highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name = "builder-gen"

hi Normal       ctermfg=0 ctermbg=15
hi Special      ctermfg=5 ctermbg=NONE
hi Comment      ctermfg=7 ctermbg=NONE
hi Constant     ctermfg=13 ctermbg=NONE
hi String       ctermfg=4  ctermbg=NONE
hi Number       ctermfg=5 ctermbg=NONE
hi htmlTagName  ctermfg=10 ctermbg=NONE
hi Identifier   ctermfg=5 ctermbg=NONE
hi Statement    ctermfg=2 ctermbg=NONE
hi Boolean      ctermfg=13 ctermbg=NONE
hi PreProc      ctermfg=6 ctermbg=NONE
hi Type         ctermfg=2 ctermbg=NONE
hi Function     ctermfg=14 ctermbg=NONE
hi Repeat       ctermfg=12 ctermbg=NONE
hi Operator     ctermfg=3 ctermbg=NONE
hi Error        ctermfg=1 ctermbg=NONE
hi TODO         ctermfg=5 ctermbg=NONE
hi linenr       ctermfg=7 ctermbg=NONE
hi CursorLineNR ctermfg=9 ctermbg=8

hi Visual          ctermfg=8 ctermbg=14
hi SpecialKey      ctermfg=0 ctermbg=NONE
hi NonText         ctermfg=8 ctermbg=NONE
hi ExtraWhitespace             ctermbg=NONE
hi MatchParen      ctermfg=0 ctermbg=7
hi Pmenu           ctermfg=0 ctermbg=12
hi PmenuSel        ctermfg=0 ctermbg=4

hi DiffAdd        ctermfg=NONE ctermbg=10
hi DiffDelete     ctermfg=NONE ctermbg=9

hi ColorColumn             ctermbg=3

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
hi javaScriptFuncArg ctermfg=6 ctermbg=NONE
hi javaScriptFuncExp ctermfg=8
hi javaScriptBraces                           cterm=NONE

hi link javaScriptDocTags Comment


" go (ala vim-go)
hi gotypes     ctermfg=2 ctermbg=NONE
hi goDirective ctermfg=6 ctermbg=NONE

hi link goTodo         TODO
hi link goType         gotypes
hi link goSignedInts   gotypes
hi link goUnsignedInts gotypes
hi link goFloats       gotypes
hi link goComplexes    gotypes

hi goOperator    ctermfg=3
hi goBuiltins    ctermfg=8
hi goDeclaration ctermfg=0
hi goDeclType    ctermfg=12

hi goFunction  ctermfg=8 ctermbg=NONE
hi goMethod    ctermfg=8 ctermbg=NONE
hi goStruct    ctermfg=8 ctermbg=NONE
hi goStructDef ctermfg=0 ctermbg=NONE


" NerdTree
hi link NERDTreeDir Special
hi NERDTreeFile     ctermfg=8
