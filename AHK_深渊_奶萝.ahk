;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_nailuo() {
    buff_right_right(2000)
    run(2100)
    skill("w", 500)
    run(1500)
    skill("w", 500)
    run(1700)
    skill("r", 1000)
    skill("CapsLock", 300)
    skill("s", 100)
    skill("d", 1000)
    skill("caps", 4000)
    skill("g", 500)
}

abyss_times_new_nailuo() {
    run(1300)
    skill("w", 500)
    run(1200)
    skill("w", 500)
    run(1200)
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
