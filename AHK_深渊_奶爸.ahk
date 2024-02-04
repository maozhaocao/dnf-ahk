#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_naiba(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(1000)
buff_down_up(1000)
run(1800)
skill("r",2000)
run(2100)
skill("numpad0",1000)
run(1300)
skill("w",700)
skill("g",500)
skill("q",4000)
pick()
}
}
#HotIf