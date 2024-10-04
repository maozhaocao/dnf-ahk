;#HotIf WinActive("ahk_exe DNF.exe")
SetWorkingDir, %A_ScriptDir%

run_with_admin()
start(1)
#Include AHK_深渊_开始.ahk


; WinSet, AlwaysOnTop, On, ahk_class Notepad ; 将记事本窗口置顶
