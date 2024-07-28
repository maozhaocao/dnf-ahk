;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_miusi() {
    buff_right_right(1000)
    run(1800)
    skill("f", 1000)
    run(1300)
    ; skill("d",200)
    skill("h", 1000)
    run(1600)
    skill("CapsLock", 500)
    skill("w", 500)
    skill("e", 5000)
}

abyss_times_new_miusi() {
    buff_right_right(1000)
    run(1200)
    skill("f", 1000)
    run(1300)
    ; skill("d",200)
    skill("h", 1000)
    run(1600)
    skill("CapsLock", 500)
    skill("w", 500)
    skill("e", 5000)
}
;#HotIf
