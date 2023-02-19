; ==================== 说明开始 ====================

; 自动吃药补 BUFF
; 按 "\" 开启，开启后会弹出一个 ToolTip 表示已生效

; ==================== 说明结束 ====================


; ==================== 配置开始 ====================

; 药品设置
; 对于冷却 = 持续的药物，建议加上 0.5s
buffTimers := []

buffTimers.Push(BuffTimer("2", 3, 0))    ; 超速
buffTimers.Push(BuffTimer("4", 60.5, 0))  ; 斗神

; Tooltip 的位置, 这里为屏幕右下角
MonitorGetWorkArea(, , , &MonitorWorkAreaRight, &MonitorWorkAreaBottom)
buffToolTipX := Floor(MonitorWorkAreaRight * 0.9)
buffToolTipY := Floor(MonitorWorkAreaBottom * 0.95)

; 1 sec
bufferTickInterval := 250
bufferTickTolerance := 500

; ==================== 配置结束 ====================

; 计时器
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

buffActivated := False

; 热键
#HotIf WinActive("ahk_exe DNF.exe")

$\::
{
    global buffActivated
    buffActivated := !buffActivated
    if (buffActivated) {
        for _, timer in buffTimers {
            timer.Start()
        }
        ToolTip "BUFF ON", buffToolTipX, buffToolTipY, 20
    }
    else {
        for _, timer in buffTimers {
            timer.Stop()
        }
        ToolTip , , , 20
    }
}

#HotIf
