;#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_角色操作.ahk

abyss_times_zhaohuan(){
    buff_right_right(1500)
    buff_left_up_right(2000)
    skill("space",500)
    run(2100)
    skill("f",500)
    run(3500)
    buff_left_down_right(8000)
    skill("g",1000)
}
;#HotIf