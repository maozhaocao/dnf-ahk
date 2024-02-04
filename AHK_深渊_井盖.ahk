#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_jinggai(times){
count := times
while (count > 0)
{
count := count - 1
buff_up_up(1000)
run(1900)
skill("f",500)
run(1900)
skill("a",2000)
run(1700)
skill("e",500)
skill("r",500)
skill("ctrl",500)
skill("v",4000)
pick()
}
}
#HotIf