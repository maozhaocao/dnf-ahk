;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_hongyan() {
    ; 120移速
    run_left(1300)
    run(2500)
    skill("q", 1000)
    run(1800)
    skill("s", 1500)
    run(1800)
    skill("w", 3000)

    if (!can_back_city()) {
        skill("g", 2000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("h", 1000)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill("f", 1000)
    }

    if (!can_back_city()) {
        skill("tab", 1000)
    }
}
;#HotIf
