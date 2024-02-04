#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_renying(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(1000)
run(1800)
skill("g",2500)
run(1800)
skill("s",1500)
run(1500)
skill("f",1000)
skill("ctrl",4000)
pick()
}
}
#HotIf