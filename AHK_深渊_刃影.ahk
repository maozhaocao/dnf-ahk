;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_renying() {
    run_left(1300)
    run(2500)
    skill("a", 1000)
    run(1800)
    skill("w", 1000)
    run(1800)
    skill("alt", 2000)

    if (!can_back_city()) {
        skill("f", 2000)
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
        skill("q", 1000)
    }

    if (!can_back_city()) {
        skill("CapsLock", 1000)
    }
}

abyss_times_new_renying() {
    buff_right_right(1000)
    run(1100)
    skill("CapsLock", 2500)
    run(1300)
    skill("alt", 1500)
    run(1200)
    skill("f", 1000)
    skill("e", 2000)
    skill("q", 1000)
}
;#HotIf
