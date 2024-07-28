sleep(time){
    sleep time
}
    
send_key(key) {
    SendEvent "{Blind}{" key " down}{" key " up}"
}

down(key) {
    SendEvent "{Blind}{" key " down}"
}

up(key) {
    SendEvent "{Blind}{" key " up}"
}

pixel_search(X1, Y1, X2, Y2, ColorID){
    return PixelSearch(&Px, &Py, X1, Y1, X2, Y2, ColorID, 30)
}

pixel_getColor(){
    ; MouseGetPos &MouseX, &MouseY
    ; MsgBox "The color at the current cursor position is " PixelGetColor(MouseX, MouseY)
    ; MouseGetPos &MouseX, &MouseY
    ; return PixelGetColor(MouseX, MouseY)
    return ""
}

input_value(title){
    IB := InputBox("", title, "w200 h150")
    if IB.Result == "Cancel"{
        MsgBox "操作被取消"
        return -1
    }
    return IB.value
}

run_with_admin(){
    full_command_line := DllCall("GetCommandLine", "str")
    if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
    {
        try
        {
            if A_IsCompiled
                Run '*RunAs "' A_ScriptFullPath '" /restart'
            else
                Run '*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"'
        }
        ExitApp
    }
}

MouseX := 0 
MouseY := 0 
mouseColor :=""

^!z::  ; Control+Alt+Z 复制当前鼠标所在像素.
{
    global MouseX,MouseY,mouseColor
    MouseGetPos MouseX, MouseY
    mouseColor:= PixelGetColor(MouseX, MouseY)
}

^!x::  ; Control+Alt+x 粘贴复制的像素.
{
    global MouseX,MouseY,mouseColor
    Send MouseX-3 "," MouseY-3 "," MouseX+3 "," MouseY+3 "," mouseColor
}