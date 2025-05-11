;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_douluo() {
    run_left(1200)
    run(2300)
    skill("q", 700)
    run(1700)
    skill("e", 1000)
    run(1800)
    skill("f", 500)
    skill("r", 1000)

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("e", 1000)
    }

    if (!can_back_city()) {
        skill("tab", 1000)
    }

    if (!can_back_city()) {
        skill("d", 1000)
    }

    if (!can_back_city()) {
        skill("v", 1000)
    }
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
