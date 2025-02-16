;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_new_jiandi() {
    ; buff_right_right(1000)
    sleep(500)
    run(1500)
    skill("w", 1000)
    run(1600)
    skill("v", 1200)
    run(1900)
    skill("s", 4000)
}
;#HotIf
