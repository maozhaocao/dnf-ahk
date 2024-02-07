send_key(key) {
    SendEvent "{Blind}{" key " down}{" key " up}"
}

down(key) {
    SendEvent "{Blind}{" key " down}"
}

up(key) {
    SendEvent "{Blind}{" key " up}"
}

run(time) {
send_key("right")
sleep 10
down("right")
sleep time
up("right")
sleep 50
}

skill(name,time){
send_key(name)
sleep time
}

pick(){
count := 5
while (count>0){
count:=count-1
if(can_back_city()){
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
break
}
sleep 1000
}
}

buff_right_right(time){
send_key("right")
sleep 10
send_key("right")
sleep 10
send_key("space")
sleep time
}

buff_up_up(time){
send_key("up")
sleep 10
send_key("up")
sleep 10
send_key("space")
sleep time
}

buff_down_up(time){
send_key("down")
sleep 10
send_key("up")
sleep 10
send_key("space")
sleep time
}

buff_up_down(time){
send_key("up")
sleep 10
send_key("down")
sleep 10
send_key("space")
sleep time
}

buff_left_up_right(time){
    send_key("left")
    sleep 10
    send_key("up")
    sleep 10
    send_key("right")
    sleep 10
    send_key("space")
    sleep time
}

buff_left_down_right(time){
    send_key("left")
    sleep 10
    send_key("down")
    sleep 10
    send_key("right")
    sleep 10
    send_key("space")
    sleep time
}

buff_left_right(time){
    send_key("left")
    sleep 10
    send_key("right")
    sleep 10
    send_key("space")
    sleep time
}

buff_right(time){
    send_key("right")
    sleep 10
    send_key("space")
    sleep time
}

click_times(times){
cur:=0
while (cur<times){
Click 1
sleep 10
cur :=cur +1
}
}

click_for_success(){
click_times(1000)
}

clean_screen(){
    sleep 500
    skill("F5",1000)
    skill("F5",1000)
}

go_abyss_door(){
down("right")
sleep 2000
up("right")
sleep 500
MouseMove 970,400
sleep 500
MouseMove 970,400
sleep 500
click_for_success()
skill("space",1000)
sleep 2000
down("right")
sleep 2000
up("right")
sleep 500
}

back_city(){
clean_screen()
skill("esc",500)
MouseMove 1135,835
sleep 500
MouseMove 1135,835
sleep 500
click_for_success()
sleep 500
skill("space",2000)
skill("F12",2000)
clean_screen()
}

back_select_character(){
clean_screen()
skill("esc",500)
MouseMove 925,840
sleep 500
MouseMove 925,840
sleep 500
click_for_success()
sleep 500 
}

have_no_pl(){
    return !have_pl()
}

have_pl(){
    if(PixelSearch(&Px, &Py, 1427, 1070, 1430, 1073, 0x00CEDE, 30)){
        return true
    }
    if(PixelSearch(&Px, &Py, 1421, 1066, 1427, 1072, 0x8F1E00, 30)){
        return true
    }
    return false
}

can_back_city(){
    score :=0
    if(PixelSearch(&Px, &Py, 1625, 263, 1631, 269, 0xF5DF9E, 30)){
        score :=score+50
    }
    if(PixelSearch(&Px, &Py, 1656, 263, 1661, 269, 0xF5DF9E, 30)){
        score :=score+50
    }
    if(PixelSearch(&Px, &Py, 1678, 263, 1684, 269, 0xF5DF9E, 30)){
        score :=score+50
    }
    if(PixelSearch(&Px, &Py, 1705, 263, 1711, 269, 0xF5DF9E, 30)){
        score :=score+50
    }
    return score>=150
}

can_back_city2(){
    if (ImageSearch(&FoundX, &FoundY, 1614, 253, 1738, 290, "D:\GitProject\maozhaocao\dnf-ahk\image\bmp\返回城镇_1614_253_1738_290.bmp"))
        MsgBox "The icon was found at " FoundX "x" FoundY
    else
        MsgBox "Icon could not be found on the screen."
}