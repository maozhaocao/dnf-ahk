#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_hongyan(times){
count := times
while (count > 0)
{
count := count - 1
buff_right_right(800)
skill("space",500)
run(1200)
skill("v",1500)
run(1600)
skill("ctrl",2000)
run(1400)
skill("d",1000)
skill("a",1000)
skill("w",5000)
pick()
}
}
#HotIf