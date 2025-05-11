;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_naima() {
    run_left(1000)
    run(2000)
    skill("CapsLock", 1000)
    run(1700)
    skill("CapsLock", 1000)
    run(1800)
    skill("tab", 2000)

    if (!can_back_city()) {
        skill("alt", 2000)
    }

    if (!can_back_city()) {
        skill("e", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("g", 1000)
    }

    if (!can_back_city()) {
        skill("q", 3000)
    }
}

abyss_times_new_naima() {
    buff_right_right(1000)
    run(1200)
    skill("CapsLock", 1000)
    run(3200)
    skill("q", 8000)
    run(500)
    skill("d", 1000)
}
;#HotIf
