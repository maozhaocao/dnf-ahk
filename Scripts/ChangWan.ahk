; ==================== 说明开始 ====================

; 自动点畅玩任务 (坐标需修改)

; ==================== 说明结束 ====================

#HotIf WinActive("ahk_exe DNF.exe")

$^r::
{
    KeyWait "Ctrl", "L"
    MouseClick "left", 2627, 1950  ; 畅玩
    MouseClick "left", 1806, 875   ; 畅玩 - 1
    MouseClick "left", 1811, 1073  ; 畅玩 - 2
    MouseClick "left", 1809, 1275  ; 畅玩 - 3
    MouseClick "left", 1809, 1506  ; 畅玩 - 4
    MouseClick "left", 1797, 682   ; 畅玩 - 总
    Kbd_RobustSend("ESC")
}

#HotIf
