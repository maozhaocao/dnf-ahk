; ==================== 说明开始 ====================

; 一些开发工具
; 1. 按 Ctrl + a 的时候抓取鼠标坐标和该像素的颜色，存入 log.txt 中

; ==================== 说明结束 ====================

; Profile()

#HotIf WinActive("ahk_exe DNF.exe")

$^a::
{
    FilePath := A_ScriptDir "\log.txt"
    MouseGetPos &xpos, &ypos
    color := PixelGetColor(xpos, ypos)
    gray := Color_RGB2Gray(color)
    FileAppend
    (
    xpos "`t" ypos "`n"
    ), FilePath
}

#HotIf
