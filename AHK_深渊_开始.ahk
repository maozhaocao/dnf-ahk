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

start_abyss(index,abyss_times_total){
if(index==6){
return
}
if(index==12){
return
}

if(abyss_times_total>0){
skill("space",4000)
}
if (index ==1){
abyss_times(abyss_times_total)
}
if (index ==4){
abyss_times(abyss_times_total)
}
if (index ==8){
abyss_times(abyss_times_total)
}

if (index ==2){
abyss_times_douluo(abyss_times_total)
}

if (index ==3){
abyss_times_nailuo(abyss_times_total)
}
if (index ==5){
abyss_times_nailuo(abyss_times_total)
}

if (index ==6){
abyss_times_zhaohuan(abyss_times_total)
}

if (index ==7){
abyss_times_jinggai(abyss_times_total)
}

if (index ==9){
abyss_times_naiba(abyss_times_total)
}

if (index ==10){
abyss_times_naima(abyss_times_total)
}

if (index ==11){
abyss_times_renying(abyss_times_total)
}

if (index ==12){
abyss_times_jianhun(abyss_times_total)
}

if (index ==13){
abyss_times_miusi(abyss_times_total)
}

if (index ==14){
abyss_times_lvren(abyss_times_total)
}

if (index ==15){
abyss_times_wunv(abyss_times_total)
}

if (index ==16){
abyss_times_hongyan(abyss_times_total)
}
}

F1::
{
index := 1
ch_count :=16
abyss_times_total := 32
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
    if have_pl(){
        MsgBox "have pl"
    }else{
        MsgBox "have no pl"
    }
}


#HotIf