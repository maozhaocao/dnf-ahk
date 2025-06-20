
global have_send :=false
global enbale_abyss_reminder := read_config("option","enbale_abyss_reminder")

deleteLastHeartbeat(){
    global enbale_abyss_reminder
    if(!enbale_abyss_reminder){
        return
    }

    ; 获取当前脚本所在目录
    currentDir := A_ScriptDir
    ; 构建完整文件路径
    heartbeatPath := currentDir . "\heartbeat.ini"
    FileDelete, %heartbeatPath%
}

updateHeartbeat()
{
    global enbale_abyss_reminder
    if(!enbale_abyss_reminder){
        return
    }
    ; 获取当前脚本所在目录
    currentDir := A_ScriptDir
    ; 构建完整文件路径
    heartbeatPath := currentDir . "\heartbeat.ini"
    ; 写入时间戳
    current_time := NowToUnix()
    IniWrite, %current_time%, %heartbeatPath%, Activity, LastAction
    report_heartbeat()
}

CheckHeartbeat() {
    global enbale_abyss_reminder
    if(!enbale_abyss_reminder){
        return
    }

    ; 获取当前脚本所在目录
    currentDir := A_ScriptDir
    ; 构建完整文件路径
    heartbeatPath := currentDir . "\heartbeat.ini"

    ; 获取最后操作时间
    IniRead, lastAction, %heartbeatPath%, Activity, LastAction
    log.debug("lastAction:",lastAction)

    timeDiff := NowToUnix() - lastAction
    log.debug("timeDiff:",timeDiff)
    global have_send
    log.debug("have_send:",have_send)

    if (timeDiff > 600000 and !have_send) {
        global have_send :=true
        log.info("发送邮件中")
        send_msg("abyss")
    }
    Return
}

send_msg(msg){
    global token
    global api_uri
    global keyboard_env
    try{
        whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        whr.Option(6) := false
        full_url := api_uri . "/abyss/send_abyss_info?user_id=" . keyboard_env . "&msg=" . msg . "&token=" . token
        log.info("full_url: ",full_url)

        whr.Open("GET", full_url, false)
        whr.Send()
        response := whr.ResponseText

        log.info("response: ",response)
    }Catch e{
        log.error("send_msg faild: ",msg)
    }
}

report_heartbeat(){
    global token
    global api_uri
    global keyboard_env
    try{
        whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
        whr.Option(6) := false
        full_url := api_uri . "/abyss/report_heartbeat?app_name=" . keyboard_env . "&token=" . token
        log.info("full_url: ",full_url)

        whr.Open("POST", full_url, false)
        whr.Send()
        response := whr.ResponseText

        log.info("response: ",response)
    } Catch e{
        log.error("report_heartbeat faild")
    }
}
