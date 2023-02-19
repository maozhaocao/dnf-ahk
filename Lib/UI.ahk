; ==================== 说明开始 ====================

; UI 库

; ==================== 说明结束 ====================

UI_ToolTip1s(msg) {
    ; Somehow it has to hacked this way
    ToolTip msg, (A_ScreenWidth * 0.9), (A_ScreenHeight * 0.9)
	fn := ToolTip.Bind()
    SetTimer fn, -1000
}
