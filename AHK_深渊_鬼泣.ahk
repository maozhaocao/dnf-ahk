;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_guiqi() {
    run_left(1300)
    run(2500)
    skill("a", 1000)
    run(1800)
    skill("e", 1000)
    run(2100)
    skill("w", 3000)

    if (!can_back_city()) {
        skill("d", 2000)
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
        skill("tab", 1000)
    }
}

abyss_times_new_guiqi() {
    buff_right_right(1500)
    run(1300)
    skill("a", 800)
    run(1500)
    skill("e", 800)
    run(1200)
    skill("r", 100)
    skill("w", 1500)
    skill("t", 4000)
}
;#HotIf
