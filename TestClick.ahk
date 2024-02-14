F2::
{
    MsgBox "F2"
    return
}

F3::
{
    Process, Priority,, High
    keyCode := "k"
    SendInput, {Blind}{%keyCode% DownTemp}
    Sleep, 1
    SendInput, {Blind}{%keyCode% Up}
    Sleep, 1
; if have_pl()
;     MsgBox "yes"
; else
;     MsgBox "no"
}