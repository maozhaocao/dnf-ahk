; ==================== 说明开始 ====================

; (内部脚本) 使用者不需要关心本脚本的实现，而应该去关心 AutoFire.ahk 这个脚本
; 由于 https://www.autohotkey.com/docs/v1/Functions.htm#lib 的缘故，此脚本必须放在这里
; 此脚本接收一个形如 "a,b,c,d" 的参数, 并开启这些用逗号隔开的按键的连发 (有冲)

; ==================== 说明结束 ====================


; ==================== 配置开始 ====================

SetKeyDelay(5, -1)

; ==================== 配置结束 ====================


#Include <Color>
#Include <Const>
#Include <Kbd>
#Include <UI>

; 加载 Config
#Include Config.ahk

; 连发进程不需要 TrayIcon 和 Log
#NoTrayIcon
KeyHistory 0
ListLines 0

global keys := A_Args[1]

if (keys != "") {
    HotIfWinActive "ahk_exe DNF.exe"
    for _, key in StrSplit(keys, ",") {
        keycode := Kbd_GetSpecialKeycode(key)  ; 提前算好 keycode, 以提高连发的速度
        fn := OnSelfAutofireKeyPressed.Bind(, key, keycode)
        Hotkey "$~*" key, fn
    }
    HotIfWinActive
}

OnSelfAutofireKeyPressed(_, key, keycode) {
    while (GetKeyState(key))
    {
        Kbd_RobustSend(keycode)
    }
}
