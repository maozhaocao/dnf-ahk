#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_miusi(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(1000)
run(2000)
skill("ctrl",500)
run(1200)
skill("g",200)
skill("g",500)
run(1800)
skill("s",500)
skill("w",500)
skill("e",5000)
pick()
}
}
#HotIf