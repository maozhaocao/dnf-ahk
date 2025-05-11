;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_new_longshen() {
    buff_right_right(1000)
    run(1500)
    skill("v", 1000)
    run(1500)
    skill("f", 1000)
    run(1800)
    skill("r", 500)
    skill("w", 4000)
}
;#HotIf
