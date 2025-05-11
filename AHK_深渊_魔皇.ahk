;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_mohuang() {
 run_left(1300)
    run(2800)
    skill("g", 1000)
    run(2200)
    skill("h", 1000)
    run(2600)
    skill("r", 3000)

    if (!can_back_city()) {
        skill("f", 2000)
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
        skill("alt", 1000)
    }

    if (!can_back_city()) {
        skill("g", 3000)
    }
}

abyss_times_new_mohuang() {
    buff_right_right(1000)
    run(1400)
    skill("s", 500)
    skill("w", 500)
    run(2000)
    skill("q", 1500)
    run(2000)
    skill("g", 800)
    skill("h", 2000)
}
;#HotIf
