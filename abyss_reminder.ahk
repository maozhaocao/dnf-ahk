filename := "abyss_reminder_token"

; 读取文件内容到变量token中
FileRead, token, %filename%

reminder_ch_index := 1

init_reminder_info(index){
    reminder_ch_index = index
}

build_msg(){

}

send_msg(msg){
    try{
        whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        whr.Open("GET", "http://1.94.20.64:20216/abyss/send_abyss_info?user_id=1317818309&msg="+msg+"&token=" + token, true)
        whr.Send()
        whr.WaitForResponse()
    } catch e{
        log.error("send_msg failed:",msg)
    }
}
