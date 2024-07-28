;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_jinggai(){
buff_right_right(1000)
run(1800)
skill("f",500)
run(1800)
skill("w",2000)
run(1700)
skill("t",500)
skill("h",9000)
; down_down_z(9000)
}

abyss_times_new_jinggai() {
    buff_up_up(1000)
    run(1100)
    skill("f", 500)
    run(1500)
    skill("a", 2000)
    run(1400)
    skill("e", 500)
    skill("g", 3000)
}
;#HotIf

