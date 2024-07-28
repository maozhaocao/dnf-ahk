;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_douluo() {
    buff_right_right(1000)
    run(2100)
    skill("q", 500)
    run(2100)
    skill("s", 1000)
    run(1200)
    skill("e", 1000)
    skill("tab", 4000)
    skill("q", 500)
}

abyss_times_new_douluo() {
    buff_right_right(1000)
    run(1000)
    skill("q", 500)
    run(1300)
    skill("s", 1000)
    run(1100)
    skill("e", 1000)
    skill("tab", 4000)
    skill("q", 500)
}
;#HotIf
