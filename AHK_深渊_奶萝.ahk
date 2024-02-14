;#HotIf WinActive("ahk_exe DNF.exe")

#Include <Base>

abyss_times_nailuo(){
buff_right_right(2000)
run(2100)
skill("q",500)
run(1500)
skill("f",500)
run(1000)
skill("d",1000)
skill("r",300)
skill("s",100)
skill("e",1000)
skill("r",4000)
skill("f",500)
}

test_nailuo(times){
count := times
while (count > 0)
{
count := count - 1
skill("a",1000)
}
}
;#HotIf