;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_mudan() {
    buff_right_right(1000)
    skill("right", 500)
    run(2300)
    skill("f", 2500)
    run(4400)
    ; skill("g",1500)
    ; run(1800)
    skill("tab", 1000)
    skill("t", 1000)
    skill("r", 7000)
}

abyss_times_new_mudan() {
    buff_right_right(1000)
    skill("right", 500)
    run(2300)
    skill("f", 2500)
    run(4400)
    ; skill("g",1500)
    ; run(1800)
    skill("tab", 1000)
    skill("t", 1000)
    skill("r", 7000)
}
;#HotIf
