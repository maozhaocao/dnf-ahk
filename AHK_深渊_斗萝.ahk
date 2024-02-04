#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_douluo(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(1000)
run(1800)
skill("s",500)
run(1800)
skill("v",1000)
run(1800)
skill("r",1000)
skill("g",4000)
pick()
}
}
#HotIf