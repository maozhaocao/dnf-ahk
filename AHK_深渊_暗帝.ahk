;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_andi() {
    run_left(1300)
    run(2300)
    skill("alt", 1000)
    run(1500)
    skill("d", 1000)
    run(1800)
    skill("r", 3000)

    if (!can_back_city()) {
        skill("w", 2000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("q", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("tab", 1000)
    }

    if (!can_back_city()) {
        skill("s", 1000)
    }
}
;#HotIf
