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

click_times(times){
cur:=0
while (cur<times){
Click 2
sleep 50
cur :=cur +1
}
}

F2::Pause -1