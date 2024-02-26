#Include AHK_版本v1.ahk

run(time) {
sleep(50)
send_key("right")
sleep(10)
down("right")
sleep(time)
up("right")
sleep(50)
}

run_left(time) {
    sleep(50)
    send_key("left")
    sleep(10)
    down("left")
    sleep(time)
    up("left")
    sleep(50)
}

skill(name,time){
sleep(10)
send_key(name)
sleep(time)
}

skill_down_up(name,time,delay){
    sleep(10)
    down(name)
    sleep(time)
    up(name)
    sleep(delay)
}

pick2(){
    skill("numpaddiv",2000)
    skill("x",200)
    skill("x",200)
    skill("x",200)
    skill("x",200)
    skill("x",200)
    skill("x",200)
    skill("x",200)
    skill("x",200)
    skill("x",200)
    skill("x",200)
    skill("esc",500)
}

pick(){
count := 8
while (count>0){
count:=count-1
if(can_back_city()){
sleep(1000)
skill("F1",2000)
skill("x",200)
skill("x",200)
skill("x",200)
skill("x",200)
skill("x",200)
skill("x",200)
skill("x",200)
skill("x",200)
skill("x",200)
skill("x",200)
skill("esc",500)
break
}
if(count<=3){
    log.info("深渊疑似卡住,执行修正流程")
    run(3000)
    run_left(1000)
    if(count==3){
        skill("q",1000)
        skill("w",1000)
        skill("e",1000)
    }
    if(count==2){
        skill("a",1000)
        skill("s",1000)
        skill("d",1000)
    }
    if(count==1){
        skill("r",1000)
        skill("f",1000)
        skill("g",1000)
    }
}
sleep(1000)
}
}

buff_right_right(time){
send_key("right")
sleep(10)
send_key("right")
sleep(10)
send_key("space")
sleep(time)
}

buff_up_up(time){
send_key("up")
sleep(10)
send_key("up")
sleep(10)
send_key("space")
sleep(time)
}

buff_down_up(time){
send_key("down")
sleep(10)
send_key("up")
sleep(10)
send_key("space")
sleep(time)
}

buff_up_down(time){
send_key("up")
sleep(10)
send_key("down")
sleep(10)
send_key("space")
sleep(time)
}

buff_left_up_right(time){
    send_key("left")
    sleep(10)
    send_key("up")
    sleep(10)
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_left_down_right(time){
    send_key("left")
    sleep(10)
    send_key("down")
    sleep(10)
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_left_right(time){
    send_key("left")
    sleep(10)
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

buff_right(time){
    send_key("right")
    sleep(10)
    send_key("space")
    sleep(time)
}

down_down_z(time){
    send_key("down")
    sleep(10)
    send_key("down")
    sleep(10)
    send_key("z")
    sleep(time)
}

down_down_down_z(time){
    send_key("down")
    sleep(10)
    send_key("down")
    sleep(10)
    send_key("down")
    sleep(10)
    send_key("z")
    sleep(time)
}

click_times(times){
cur:=0
while (cur<times){
Click 1
sleep(10)
cur :=cur +1
}
}

click_for_success(){
click_times(5)
}

clean_screen(){
    sleep(500)
    skill("F5",1000)
    skill("F5",1000)
}

go_abyss_door(){
down("right")
sleep(2000)
up("right")
sleep(500)
MouseMove 970,400
skill("WheelUp",100)
skill("WheelUp",100)
skill("WheelUp",100)
skill("WheelUp",100)
skill("WheelUp",100)
skill("WheelUp",100)
skill("WheelUp",100)
skill("WheelUp",100)
skill("WheelUp",100)
skill("WheelUp",100)
sleep(500)
MouseMove 970,400
sleep(500)
click_for_success()
skill("space",1000)
sleep(2000)
down("right")
sleep(2000)
up("right")
sleep(500)
}

back_city(){
clean_screen()
skill("esc",500)
MouseMove 1135,750
sleep(500)
MouseMove 1135,750
sleep(500)
click_for_success()
sleep(500)
skill("space",2000)
skill("F12",2000)
clean_screen()
}

back_select_character(){
clean_screen()
skill("esc",500)
MouseMove 925,750
sleep(500)
MouseMove 925,750
sleep(500)
click_for_success()
sleep(500)
}

pixel_search_point(pointX,pointY,colorId){
return pixel_search(pointX-3,pointY-3,pointX+3,pointY+3,colorId)
}

have_no_pl(){
    return !have_pl()
}

have_pl(){
    if(pixel_search_point(1429, 1071, 0x23CDEE)){
        ;return true
    }
    if(pixel_search_point(1429, 1071, 0x00CEDE)){
        return true
    }
    if(pixel_search_point(1424, 1069, 0x8F1E00)){
        return true
    }
    return false
}

have_ticket(){
    score :=0
    if(pixel_search_point(1635,155,0xCEB37D)){
        score :=score+50
    }
    if(pixel_search_point(1664,157,0xEEC88E)){
        score :=score+50
    }
    if(pixel_search_point(1688,154,0xEAC484)){
        score :=score+50
    }
    if(pixel_search_point(1718,151,0xDCC38A)){
        score :=score+50
    }
    return score>=150
}

have_no_ticket2(){
return !have_ticket()
}

have_no_ticket(){
    score :=0
    if(pixel_search_point(1625,158,0x818181)){
        score :=score+50
    }
    if(pixel_search_point(1660,151,0xBBBBBB)){
        score :=score+50
    }
    if(pixel_search_point(1689,154,0xADADAD)){
        score :=score+50
    }
    if(pixel_search_point(1710,154,0xA6A6A6)){
        score :=score+50
    }
    return score>=150
}

can_enter_abyss(){
    score :=0
    if(pixel_search_point(1578,995,0x0B2C54)){
        score :=score+50
    }
    if(pixel_search_point(1703,996,0x0B2B51)){
        score :=score+50
    }
    if(pixel_search_point(1764,997,0x0B2A50)){
        score :=score+50
    }
    if(pixel_search_point(1884,993,0x0D2E58)){
        score :=score+50
    }
    ;score>=150说明实际因为没有票或者pl没有进去
    return score<150
}

can_back_city(){
    score :=0
    ;0xB39155
    if(pixel_search_point(1628, 266, 0xF5DF9E)){
        score :=score+50
    }
    if(pixel_search_point(1659, 266, 0xF5DF9E)){
        score :=score+50
    }
    if(pixel_search_point(1681, 266, 0xF5DF9E)){
        score :=score+50
    }
    if(pixel_search_point(1708, 266, 0xF5DF9E)){
        score :=score+50
    }
    return score>=150
}

; can_back_city2(){
;     if (ImageSearch(&FoundX, &FoundY, 1614, 253, 1738, 290, "D:\GitProject\maozhaocao\dnf-ahk\image\bmp\返回城镇_1614_253_1738_290.bmp"))
;         MsgBox "The icon was found at " FoundX "x" FoundY
;     else
;         MsgBox "Icon could not be found on the screen."
; }
move_and_click(mouse_x,mouse_y,delay){
    sleep(200)
    MouseMove mouse_x,mouse_y
    sleep(delay)
    click_for_success()
    sleep(200)
}

move_and_click_one(mouse_x,mouse_y,delay){
    sleep(200)
    MouseMove mouse_x,mouse_y
    sleep(delay)
    click_times(1)
    sleep(200)
}

receive_daily_ticket(){
    sleep(200)
    move_and_click_one(1386,977,800)
    move_and_click_one(890,307,800)
    clean_screen()    
}


finish_daily_task(){
sleep(200)
MouseMove 1386,977
sleep(800)
click_times(1)
move_and_click(890,420,800)
move_and_click(890,536,800)
move_and_click(890,658,800)
move_and_click(890,805,800)
move_and_click(890,307,800)
sleep(500)
skill("F5",1000)
skill("F5",1000)
}

finish_abyss_task(){
sleep(200)
MouseMove 1576,930
sleep(800)
click_times(1)
global index
if(index == 16){
    move_and_click_one(1340,890,800)
}else{
    move_and_click_one(1575,930,800)
}
move_and_click(1158,460,800)
move_and_click(1158,572,800)
move_and_click(1158,709,800)
move_and_click(1158,800,800)
move_and_click(1158,884,800)
sleep(500)
skill("F5",1000)
skill("F5",1000)
}

receive_abyss_login_gift(){
sleep(200)
global index
if(index == 16){
    move_and_click_one(1575,930,800)
}else{
    move_and_click_one(1475,930,800)
}
move_and_click_one(1158,460,800)
sleep(500)
skill("esc",500)
receive_email()
open_abyss_login_gift()
}

receive_email(){
    move_and_click_one(1600,650,800)
    move_and_click_one(730,820,800)
    sleep(4000)
    clean_screen()
}

open_abyss_login_gift(){
    skill("i",1000)
    move_and_click_one(1220,470,800)
    sleep(2000)
    ImageSearch, FoundX, FoundY, 1080, 490, 1530, 886,*100 D:\GitProject\maozhaocao\dnf-ahk\image\bmp\激战登录礼盒.bmp
    if (ErrorLevel == 0){
        log.info("找到激战登录礼盒，准备开启")
        Sleep(300)
        MouseMove FoundX+25,FoundY+25
        sleep(800)
        Click,Right
        sleep(1000)
    }else{
        log.info("未找到激战登录礼盒，跳过开启")
    }
    clean_screen()
}