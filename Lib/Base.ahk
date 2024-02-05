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
skill("f10",6000)
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
Click 2
sleep 50
cur :=cur +1
}
}

click_for_success(){
click_times(100)
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
    return PixelSearch(&Px, &Py, 1428, 1073, 1431, 1076, 0x171307, 3)
}

have_pl(){
    return !have_no_pl()
}