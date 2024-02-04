#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_wunv(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(1000)
run(1800)
skill("v",500)
run(1700)
skill("e",500)
run(1600)
skill("s",700)
skill("q",4000)
pick()
}
}
#HotIf