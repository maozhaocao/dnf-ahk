#SingleInstance Force
#MaxThreadsPerHotkey 100

#Include <Kbd>
#Include <UI>
#Include <Color>


if not A_IsAdmin
	Run '*RunAs "' A_ScriptFullPath '"'


SendMode "Event"
SetKeyDelay(80, -1)

; 1 sec
bufferTickInterval := 250
bufferTickTolerance := 500

activated := False

; 对于冷却 = 持续的药物，建议加上 0.5s
timers := []

timers.Push(BuffTimer("2", 3, 0))    ; 超速
timers.Push(BuffTimer("4", 60.5, 0))  ; 斗神

MonitorGetWorkArea(, , , &MonitorWorkAreaRight, &MonitorWorkAreaBottom)
tooltip_x := Floor(MonitorWorkAreaRight * 0.95)
tooltip_y := Floor(MonitorWorkAreaBottom * 0.95)

FilePath := A_ScriptDir "\log.txt"

class BuffTimer {
    ; https://www.autohotkey.com/docs/commands/SetTimer.htm
    __New(keycode, interval, firstWait) {
        this.interval := interval
        this.keycode := keycode
        this.firstWait := firstWait
        this.timer := ObjBindMethod(this, "Tick")
    }

    Start() {
        global bufferTickInterval
        timer := this.timer
        this.offset := Mod(A_TickCount + this.firstWait * 1000, this.interval * 1000)
        SetTimer(timer, bufferTickInterval)
        this.Tick()
    }

    Stop() {
        timer := this.timer
        SetTimer(timer, 0)
    }

    Tick() {
        global bufferTickTolerance
        now := Mod(A_TickCount, this.interval * 1000)
        ; distance between two points on a ring
        if (WinActive("ahk_exe DNF.exe")
            && (Abs(now - this.offset) <= bufferTickTolerance
                || this.interval * 1000 - Abs(now - this.offset) <= bufferTickTolerance)) {
            Kbd_RobustSend(this.keycode)
        }
    }
}


#HotIf WinActive("ahk_exe DNF.exe")
$\::
{
    global activated
    activated := !activated
    if (activated) {
        for _, timer in timers {
            timer.Start()
        }
        ToolTip "BUFF ON", tooltip_x, tooltip_y, 20
    }
    else {
        for _, timer in timers {
            timer.Stop()
        }
        ToolTip , , , 20
    }
}

$^a::
{
    MouseGetPos &xpos, &ypos
    color := PixelGetColor(xpos, ypos)
    gray := Color_RGB2Gray(color)
    FileAppend
    (
    xpos "`t" ypos "`n"
    ), FilePath
}

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


$^+s::
{
    KeyWait "LCtrl", "L"
    KeyWait "LShift", "L"
    Kbd_RobustSend("i")

    ; 护石和加点
    MouseClick "left", 2647, 344      ; 护石页
    MouseClick "left", 2817, 431      ; 开启预设列表
    color := PixelGetColor(2592, 450) ; 现在护石名左下角的像素，如果当前是 BUFF 则该块为黄色，否则为黑色
    gray := Color_RGB2Gray(color)
    if (gray > 0.3) {
        MouseClick "left", 2986, 529 ; 切换审判
    }
    else {
        MouseClick "left", 2988, 466 ; 切换 BUFF
    }
    MouseClick "left", 3089, 607     ; 应用预设
    Sleep 500

    ; 徽章
    MouseClick "left", 2791, 333   ; 徽章页
    MouseClick "right", 2168, 1674 ; 换徽章
    Sleep 500

    ; 时装
    MouseClick "left", 2343, 336   ; 时装页
    MouseClick "left", 2203, 967   ; 装扮
    MouseClick "right", 2168, 1674 ; 换时装
    Sleep 500

    ; 辟邪玉
    MouseClick "left", 2211, 341   ; 物品页
    MouseClick "left", 2209, 959   ; 装备页
    MouseClick "right", 2184, 1600 ; 换称号
    MouseClick "left", 2761, 856   ; 未央
    MouseClick "right", 1160, 1508 ; 换辟邪玉
    Sleep 500
    Kbd_RobustSend("ESC")
}


$>#>^>!1::
{
    KeyWait "RCtrl", "L"
    KeyWait "RAlt", "L"
    KeyWait "RWin", "L"
    MouseClick "left", 3040, 446  ; 重置
    MouseClick "left", 908, 855
    MouseClick "left", 926, 1581
    MouseClick "left", 1003, 459  ; 输入框
    Send "之"
    Kbd_RobustSend("Enter")
}

$>#>^>!2::
{
    KeyWait "RCtrl", "L"
    KeyWait "RAlt", "L"
    KeyWait "RWin", "L"
    MouseClick "left", 3040, 446  ; 重置
    MouseClick "left", 1003, 459  ; 输入框
    Send "神"
    MouseClick "left", 897, 1180  ; 未央
    MouseClick "left", 890, 1262  ; 辟邪玉
    MouseClick "left", 2264, 453  ; 名望下界
    Send "140"
    MouseClick "left", 2481, 454  ; 名望上界
    Send "150"
    MouseClick "left", 2867, 658  ; 词条一
    MouseClick "left", 2836, 757  ; 伤害增加
    MouseClick "left", 2536, 807  ; 技能伤害
    MouseClick "left", 2826, 728  ; 输入框
    Send "2"
    MouseClick "left", 2699, 447  ; 搜索
}


$^q::
{
    KeyWait "LCtrl", "L"
    xpos := ypos := 0
    MouseGetPos xpos, ypos
    Loop 10 {
        MouseClick "left", xpos, ypos
        MouseClick "left", 2121, 1485
        Kbd_RobustSend("ESC")
    }
}

$^e::
{
    KeyWait "LCtrl", "L"
    xpos := ypos := 0
    MouseGetPos xpos, ypos

    MouseClick "left", xpos, ypos
    MouseClick "left", 2317, 1638
    Kbd_RobustSend("ESC")
    Kbd_RobustSend("ESC")
    MouseClick "left", 1731, 895
    MouseClick "left", 1618, 1575
    Kbd_RobustSend("ESC")
    Kbd_RobustSend("i")
    MouseClick "left", 2355, 962
}

$RCtrl::
{
    KeyWait "RCtrl", "L"
    ; Kbd_RobustSend("1")
    ; Kbd_RobustSend("2")
    ; Kbd_RobustSend("4")
    Kbd_RobustSend("RShift")
    Kbd_RobustSend("u")
    MouseClick "right", 2178, 1600
    Kbd_RobustSend("ESC")
}

$F12::
{
    ToggleXinYi := !ToggleXinYi
    While ToggleXinYi {
        Send "{2 down}"
        Sleep 10
        Send "{2 up}"
        Sleep 10
        MouseClick "right"
        Sleep 10
    }
}

$^w::
{
    MouseClick "left"
    UI_ToolTip1s("Clicked")
}

#HotIf

<!+r::Reload

