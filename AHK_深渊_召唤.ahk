#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_zhaohuan(times){
count := times
while (count > 0)
{
    count := count - 1
    buff_right_right(1200)
    buff_left_up_right(2000)
    skill("q",500)
    run(2100)
    skill("f",500)
    run(2200)
    skill("ctrl",500)
    skill("s",500)
    run(1700)
    skill("g",500)
    skill("d",500)
    buff_left_right(7000)
    pick()
}
}
#HotIf