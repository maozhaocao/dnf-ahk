;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_new_papa() {
    sleep(10)
    buff_right_right(1500)
    run(1200)
    skill_down_up("tab", 500, 500)
    run(1500)
    skill("s", 2500)
    run(1800)
    skill("w", 800)
    skill("f", 1000)
    skill("e", 1000)
}
;#HotIf
