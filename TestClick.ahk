F2::
{
    MsgBox "F2"
    return
}

; F3::
; {
;     Process, Priority,, High
;     keyCode := "k"
;     SendInput, {Blind}{%keyCode% DownTemp}
;     Sleep, 1
;     SendInput, {Blind}{%keyCode% Up}
;     Sleep, 1
; ; if have_pl()
; ;     MsgBox "yes"
; ; else
; ;     MsgBox "no"
; } 

MouseX := 0 
MouseY := 0 
mouseColor :=""

^!z::  ; Control+Alt+Z 复制当前鼠标所在像素.
{
    global MouseX,MouseY,mouseColor
    MouseGetPos &MouseX, &MouseY
    mouseColor:= PixelGetColor(MouseX, MouseY)
}

^!x::  ; Control+Alt+x 粘贴复制的像素.
{
    global MouseX,MouseY,mouseColor
    Send MouseX-3 "," MouseY-3 "," MouseX+3 "," MouseY+3 "," mouseColor
}