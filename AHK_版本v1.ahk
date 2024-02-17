sleep(time){
    sleep,time
}
    
send_key(key) {
    SendInput, {Blind}{%key% DownTemp}
    Sleep, 1
    SendInput, {Blind}{%key% Up}
    Sleep, 1
}

down(key) {
    SendInput, {Blind}{%key% DownTemp}
}

up(key) {
    SendInput, {Blind}{%key% Up}
}

pixel_search( X1, Y1, X2, Y2, ColorID){
    PixelSearch, Px, Py, X1, Y1, X2, Y2, ColorID, 60, Fast RGB
    return ErrorLevel==0
}

pixel_getColor(){
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    return "%color%"
}

input_value(title){
    InputBox,index, %title%
    if ErrorLevel{
        MsgBox,"操作被取消"
        return -1
    }
    return index
}

run_with_admin(){
    full_command_line := DllCall("GetCommandLine", "str")
    if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
    {
        try
        {
            if A_IsCompiled
                Run *RunAs "%A_ScriptFullPath%" /restart
            else
                Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
        }
        ExitApp
    }
}