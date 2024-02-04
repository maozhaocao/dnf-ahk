#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_one(){
buff_right_right(500)
run(2100)
skill("r",500)
run(2100)
skill("w",500)
run(1500)
skill("g",700)
skill("d",1000)
skill("d",4000)
pick()
}

abyss_times(times){
count := times
while (count > 0)
{
count := count - 1
abyss_one()
}
}

test(times){
count := times
while (count > 0)
{
count := count - 1
skill("x",1000)
}
}

#HotIf