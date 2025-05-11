;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_ningmao() {
    run_left(1300)
    run(2500)
    skill("g", 1000)
    run(1800)
    skill("d", 1000)
    run(1800)
    skill("CapsLock", 3000)

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
        skill("w", 1000)
    }
}
;#HotIf
