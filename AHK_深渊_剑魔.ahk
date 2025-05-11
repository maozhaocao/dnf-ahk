;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_jianmo() {
    run_left(1300)
    run(2500)
    skill("a", 1000)
    run(1800)
    skill("d", 1000)
    run(2100)
    skill("h", 3000)

    if (!can_back_city()) {
        skill("w", 2000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("e", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("tab", 1000)
    }

    if (!can_back_city()) {
        skill("f", 1000)
    }
}

abyss_times_new_jianmo() {
    buff_right_right(1500)
    run(1100)
    skill("g", 1500)
    run(1200)
    skill("alt", 2500)
    run(1200)
    skill("h", 500)
    skill("a", 1000)
    skill("w", 3000)
}
;#HotIf
