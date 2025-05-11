;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_huahua() {
    run_left(1000)
    run(2000)
    skill("g", 500)
    run(1700)
    skill("h", 1000)
    run(1800)
    skill("f", 2000)

    if (!can_back_city()) {
        skill("e", 2000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("w", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("q", 1000)
    }

    if (!can_back_city()) {
        skill("t", 3000)
    }
}

abyss_times_new_huahua() {
    buff_right_right(1500)
    ; buff_up_up(1000)
    run(1000)
    skill("h", 1500)
    run(1000)
    skill("r", 1500)
    run(1000)
    skill("a", 1000)
    skill("w", 4000)
    skill("f", 1000)
}
;#HotIf
