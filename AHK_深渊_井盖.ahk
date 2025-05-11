;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_jinggai() {
    run_left(1300)
    run(1000)
    skill("q", 500)
    run(4500)
    skill("f", 1000)
    run(2600)
    skill("t", 500)

    if (!can_back_city()) {
        skill("r", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("f", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("r", 1000)
    }

    if (!can_back_city()) {
        skill("e", 3000)
    }
}

abyss_times_new_jinggai() {
    buff_right_right(1000)
    run(1300)
    skill("f", 500)
    run(2200)
    skill("w", 2000)
    run(2000)
    skill("t", 500)
    skill("r", 2000)
}
;#HotIf
