;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_mudan() {
    run_left(1300)
    run(2500)
    skill("a", 1000)
    run(1800)
    skill("s", 1000)
    run(1800)
    skill("t", 3000)

    if (!can_back_city()) {
        skill("g", 2000)
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
        skill("w", 1000)
    }

    if (!can_back_city()) {
        skill("q", 1000)
    }
}

abyss_times_new_mudan() {
    buff_right_right(1000)
    skill("right", 500)
    run(1600)
    skill("f", 2500)
    run(4400)
    ; skill("g",1500)
    ; run(1800)
    skill("tab", 1000)
    skill("t", 1000)
    skill("r", 7000)
}
;#HotIf
