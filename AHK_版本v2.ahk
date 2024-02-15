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