; ==================== 说明开始 ====================

; 大乱斗

; ==================== 说明结束 ====================

#HotIf WinActive("ahk_class 地下城与勇士")

; 黑钻硬币
ToggleDaLuanDou := False
$^F12::
{
    global ToggleDaLuanDou
    ToggleDaLuanDou := !ToggleDaLuanDou
    While ToggleDaLuanDou {
        MouseClick "left", 3445, 1318
        Sleep 1000
        Kbd_RobustSend("Right")
        Attack(4000)
        Sleep 1000
        Kbd_RobustSend("Left")
        Attack(4000)
    }
}

Attack(time) {
    start := A_TickCount
    end := start + time
    while (A_tickcount < end && ToggleDaLuanDou)
    {
        Kbd_RobustSend("x")
        Kbd_RobustSend("a")
        if (Random(50) == 1) {
            Kbd_RobustSend("s")
        }
    }
}

#HotIf