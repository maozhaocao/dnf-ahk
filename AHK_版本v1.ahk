#include <log>
; log.is_out_console := true
log.is_out_file := true
log.is_use_editor := true
log.level := log.level_debug

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
    PixelSearch, Px, Py, X1, Y1, X2, Y2, ColorID, 40, Fast RGB
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

list_contains_key(list,key){
    for index, element in list{
        if(element == key){
            return true
        }
    }
    return false 
}

is_wednesday() {
    day := A_WDay - 1  ;1 位数表示的当前星期几（1-7）。 在所有区域设置中 1 都表示星期天.
    cur_hour := A_Hour
    if (day == 3 and cur_hour >= 6) {
        return true
    }
    if (day == 4 and cur_hour < 6) {
        return true
    }
    return false
}