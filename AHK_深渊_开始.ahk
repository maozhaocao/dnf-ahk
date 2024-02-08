#HotIf WinActive("ahk_exe DNF.exe")

#Include AHK_深渊_元素.ahk
#Include AHK_深渊_斗萝.ahk
#Include AHK_深渊_奶萝.ahk
#Include AHK_深渊_召唤.ahk
#Include AHK_深渊_井盖.ahk
#Include AHK_深渊_奶爸.ahk
#Include AHK_深渊_奶妈.ahk
#Include AHK_深渊_刃影.ahk
#Include AHK_深渊_剑魂.ahk
#Include AHK_深渊_缪斯.ahk
#Include AHK_深渊_旅人.ahk
#Include AHK_深渊_巫女.ahk
#Include AHK_深渊_红眼.ahk
#Include AHK_深渊_肥鯮.ahk
#Include AHK_深渊_花花.ahk
#Include AHK_深渊_瞎子.ahk
#Include AHK_深渊_鬼泣.ahk

start_abyss(index,abyss_times_total){
    skill("space",4000)
    count := abyss_times_total
    while (count > 0)
    {
    count := count - 1
    abyss_times_one(index)
    pick()
    if(have_no_pl()){
        ; break
    }
    if(count >0){
        skill("F10",6000)
    }
    }
}

abyss_times_one(index){

if (index ==1){
abyss_times()
}
if (index ==4){
abyss_times()
}
if (index ==8){
abyss_times()
}

if (index ==2){
abyss_times_douluo()
}

if (index ==3){
abyss_times_nailuo()
}
if (index ==5){
abyss_times_nailuo()
}

if (index ==6){
abyss_times_zhaohuan()
}

if (index ==7){
abyss_times_jinggai()
}

if (index ==9){
abyss_times_naiba()
}

if (index ==10){
abyss_times_naima()
}

if (index ==11){
abyss_times_renying()
}

if (index ==12){
abyss_times_jianhun()
}

if (index ==13){
abyss_times_miusi()
}

if (index ==14){
abyss_times_lvren()
}

if (index ==15){
abyss_times_wunv()
}

if (index ==16){
abyss_times_hongyan()
}

if (index ==17){
abyss_times_feizong()
}

if (index ==18){
abyss_times_huahua()
}

if (index ==19){
abyss_times_xiazi()
}

if (index ==20){
abyss_times_guiqi()
}
}

F1::
{
index := 1
ch_count :=20
abyss_times_total := 24
while (index <=ch_count){
if(have_pl()){
    go_abyss_door()
    start_abyss(index,abyss_times_total)
    back_city()
}
back_select_character()
sleep 4000
skill("right",2000)
skill("space",5000)
index := index+1
}
}



F2::
{
abyss_times()
pick()
}

F3::
{
    ; Click
if have_pl()
    MsgBox "yes"
else
    MsgBox "no"
}

F12::ExitApp

^!r::Reload  ; Ctrl+Alt+R

mouseColor :=""

^!z::  ; Control+Alt+Z 复制当前鼠标所在像素.
{
    MouseGetPos &MouseX, &MouseY
    global mouseColor
    mouseColor:= PixelGetColor(MouseX, MouseY)
}

^!x::  ; Control+Alt+x 粘贴复制的像素.
{
    global mouseColor
    Send mouseColor
}


#HotIf