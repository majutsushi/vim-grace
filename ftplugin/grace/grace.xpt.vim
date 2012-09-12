XPTemplate priority=lang

let s:f = g:XPTfuncs()

" use snippet 'varConst' to generate contant variables
" use snippet 'varFormat' to generate formatting variables
" use snippet 'varSpaces' to generate spacing variables


XPTinclude
      \ _common/common


XPT var hint=var\ ...\ :=\ ...
var `name^ := `value^
..XPT

XPT def hint=def\ ...\ =\ ...
def `name^ = `value^
..XPT

XPT _if hidden
if (`condition^) then {
    `cursor^
}
..XPT

XPT if wrap hint=if\ ()\ then\ {}
`Include:_if^
..XPT

XPT elseif wrap
else`Include:_if^
..XPT

XPT else wrap
else {
    `cursor^
}
..XPT

XPT while wrap hint=while\ {}\ do\ {}
while {`condition^} do {
    `cursor^
}
..XPT

XPT for wrap hint=for\ ()\ do\ {}
for (`expression^) do { `v^ ->
    `cursor^
}
..XPT

XPT method hint=method\ ...\ {}
method `signature^` -> `Dynamic^ {
    `cursor^
}
..XPT

XPT class hint=class\ ...
class `signature^.`new^ {
    `cursor^
}
..XPT
