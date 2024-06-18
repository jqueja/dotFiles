syntax keyword joshPythonKeyword self
hi! link joshPythonKeyword pythonConditional

syntax keyword joshPythonUnittest assertAlmostEqual assertEqual assertRaises assertIsNone
hi! link joshPythonUnittest pythonOperator

syntax match joshPythonCall "\w\+\s*("me=e-1,he=e-1
hi! link joshPythonCall pythonInclude

syntax keyword joshReturnCall return
hi! link joshReturnCall pythonInclude

" It's not a perfect match, but attempt to highlight docstrings as comments.
syntax region pySynAfterDocstring start=/\z('''\|"""\)/ end=/\z1/ keepend contains=pythonEscape,pythonSpaceError,pythonDoctest,pythonTodo,pySynAfterDocKeyword,@Spell
syntax region pySynAfterDocKeyword start=/^\s*:/ end=/:/ contained
hi! link pySynAfterDocstring pythonComment
hi! link pySynAfterDocKeyword pythonTodo 
