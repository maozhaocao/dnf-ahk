; ==================== 说明开始 ====================

; 本项目的总入口，它做了以下事情
; 加载 Config.ahk
; 加载 Scripts/*.ahk

; ==================== 说明结束 ====================

; 提升至管理员权限 (否则发送按键无法对 DNF 生效)

if not A_IsAdmin
	Run '*RunAs "' A_ScriptFullPath '"'

#SingleInstance Force

#Include <Color>
#Include <Const>
#Include <Kbd>
#Include <UI>

; 加载 Config
#Include "Config.ahk"

; https://www.autohotkey.com/docs/v1/lib/SetKeyDelay.htm
SetKeyDelay(5, -1)

; #Include 不支持 wildcard 和变量所以只能这么笨笨地写了
#Include "Scripts/AutoFireMP.ahk"
#Include "Scripts/DevTools.ahk"
#Include "Scripts/BUFF.ahk"
#Include "Scripts/ChangWan.ahk"
#Include "Scripts/Personal.ahk"

; Alt + Shift + R 重载脚本
<!+r::Reload
