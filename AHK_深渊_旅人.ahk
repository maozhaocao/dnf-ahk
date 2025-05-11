;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_lvren() {
 run_left(1300)
    run(2700)
    skill("q", 1000)
    run(1800)
    skill("r", 1000)
    run(2000)
    skill("s", 3000)

    if (!can_back_city()) {
        skill("e", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("d", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("g", 1000)
    }

    if (!can_back_city()) {
        skill("t", 3000)
    }
}

abyss_times_new_lvren() {
    buff_right_right(1000)
    run(900)
    skill("r", 1500)
    run(1300)
    skill("e", 1000)
    run(1100)
    skill("s", 700)
    skill("g", 2500)
}
;#HotIf
