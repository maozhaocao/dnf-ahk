;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_hejin() {
    run_left(1000)
    run(2000)
    skill("g", 1000)
    run(1700)
    skill("s", 1500)
    run(2100)
    skill("t", 2000)

    if (!can_back_city()) {
        skill("r", 2000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("q", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("f", 1000)
    }

    if (!can_back_city()) {
        skill("g", 3000)
    }
}

abyss_times_new_hejin() {
    buff_right_right(1500)
    skill("w", 1000)
    run(1300)
    skill("f", 1500)
    run(2000)
    skill("s", 1000)
    run(2200)
    skill("t", 500)
    ; skill("h", 6000)
    skill("g", 1000)
}
;#HotIf
