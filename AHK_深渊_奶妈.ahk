;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_naima() {
    buff_right_right(1000)
    run(1800)
    skill("e", 1000)
    run(3200)
    skill("v", 7000)
    run(500)
    skill("e", 1000)
}

abyss_times_new_naima() {
    buff_right_right(1000)
    run(1200)
    skill("e", 1000)
    run(3200)
    skill("v", 7000)
    run(500)
    skill("e", 1000)
}
;#HotIf
