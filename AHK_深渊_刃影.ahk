;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_renying() {
    buff_right_right(1000)
    run(1800)
    skill("CapsLock", 2500)
    run(1800)
    skill("alt", 1500)
    run(1500)
    skill("f", 1000)
    skill("e", 4000)
    skill("q", 1000)
}

abyss_times_new_renying() {
    buff_right_right(1000)
    run(1100)
    skill("CapsLock", 2500)
    run(1300)
    skill("alt", 1500)
    run(1200)
    skill("f", 1000)
    skill("e", 2000)
    skill("q", 1000)
}
;#HotIf
