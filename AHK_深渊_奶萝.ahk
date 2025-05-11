;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_nailuo() {
    run_left(1200)
    run(2800)
    skill("w", 700)
    run(1800)
    skill("w", 1000)
    run(1800)
    skill("s", 2000)

    if (!can_back_city()) {
        skill("d", 2000)
    }

    if (!can_back_city()) {
        skill("f", 2000)
    }

    if (!can_back_city()) {
        skill("w", 2000)
    }

    if (!can_back_city()) {
        skill("ctrl", 2000)
    }

    if (!can_back_city()) {
        skill("g", 7000)
    }
}

abyss_times_new_nailuo() {
    run(1500)
    skill("w", 500)
    run(1400)
    skill("w", 500)
    run(1400)
    skill("CapsLock", 300)
    skill("s", 100)
    skill("d", 1000)
    skill("g", 500)
}

test_nailuo(times) {
    count := times
    while (count > 0)
    {
        count := count - 1
        skill("a", 1000)
    }
}
;#HotIf
