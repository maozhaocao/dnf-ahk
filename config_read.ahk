
read_env(section,key){
    currentDir := A_ScriptDir
    ; 构建完整文件路径
    keyboardPath := currentDir . "\env.ini"
    IniRead, read_value, %keyboardPath%, %section%, %key%
    return %read_value%
}

init_env(){
    global token := read_env("env","abyss_reminder_token")
    global api_uri := read_env("env","api_uri")
    global keyboard_env := read_env("env","keyboard_env")
}


read_config(section,key){
    global keyboard_env
    currentDir := A_ScriptDir
    ; 构建完整文件路径
    keyboardPath := currentDir . "\keyboard_" . keyboard_env . ".ini"
    IniRead, read_value, %keyboardPath%, %section%, %key%
    return %read_value%
}

init_config(){
    global skill_1 := read_config("keyboard","skill_1")
    global skill_2 := read_config("keyboard","skill_2")
    global skill_3 := read_config("keyboard","skill_3")
    global skill_4 := read_config("keyboard","skill_4")
    global skill_5 := read_config("keyboard","skill_5")
    global skill_6 := read_config("keyboard","skill_6")
    global skill_7 := read_config("keyboard","skill_7")
    global skill_expand_1 := read_config("keyboard","skill_expand_1")
    global skill_expand_2 := read_config("keyboard","skill_expand_2")
    global skill_expand_3 := read_config("keyboard","skill_expand_3")
    global skill_expand_4 := read_config("keyboard","skill_expand_4")
    global skill_expand_5 := read_config("keyboard","skill_expand_5")
    global skill_expand_6 := read_config("keyboard","skill_expand_6")
    global skill_expand_7 := read_config("keyboard","skill_expand_7")
    global mall := read_config("keyboard","mall")
    global key_continue := read_config("keyboard","key_continue")
    global back_city := read_config("keyboard","back_city")
    global skill_z := read_config("keyboard","skill_z")
    global skill_x := read_config("keyboard","skill_x")
    global skill_c := read_config("keyboard","skill_c")
    global skill_space := read_config("keyboard","skill_space")
    global key_enter := read_config("keyboard","key_enter")
    global key_up := read_config("keyboard","key_up")
    global key_down := read_config("keyboard","key_down")
    global key_left := read_config("keyboard","key_left")
    global key_right := read_config("keyboard","key_right")
    global key_esc := read_config("keyboard","key_esc")
    global key_pick := read_config("keyboard","key_pick")

    global keyboard_dict := Object()

    ; 主技能键位
    keyboard_dict["a"] := skill_1
    keyboard_dict["s"] := skill_2
    keyboard_dict["d"] := skill_3
    keyboard_dict["f"] := skill_4
    keyboard_dict["g"] := skill_5
    keyboard_dict["v"] := skill_6
    keyboard_dict["Lctrl"] := skill_7

    ; 扩展技能键位
    keyboard_dict["q"] := skill_expand_1
    keyboard_dict["w"] := skill_expand_2
    keyboard_dict["e"] := skill_expand_3
    keyboard_dict["r"] := skill_expand_4
    keyboard_dict["Rctrl"] := skill_expand_5
    keyboard_dict["Numpad0"] := skill_expand_6
    keyboard_dict["Numpad4"] := skill_expand_7

    ; 功能键位
    keyboard_dict["F5"] := mall
    keyboard_dict["F10"] := key_continue
    keyboard_dict["F12"] := back_city

    ; 特殊技能键
    keyboard_dict["z"] := skill_z
    keyboard_dict["x"] := skill_x
    keyboard_dict["c"] := skill_c
    keyboard_dict["space"] := skill_space

    ; 导航键
    keyboard_dict["enter"] := key_enter
    keyboard_dict["up"] := key_up
    keyboard_dict["down"] := key_down
    keyboard_dict["left"] := key_left
    keyboard_dict["right"] := key_right

    ; 系统键
    keyboard_dict["esc"] := key_esc
    keyboard_dict["numpaddiv"] := key_pick

    global abyss_door_x := read_config("ui_location","abyss_door_x") + 0
    global abyss_door_y := read_config("ui_location","abyss_door_y") + 0
    global back_city_x := read_config("ui_location","back_city_x") + 0
    global back_city_y := read_config("ui_location","back_city_y") + 0
    global back_selct_character_x := read_config("ui_location","back_selct_character_x") + 0
    global back_selct_character_y := read_config("ui_location","back_selct_character_y") + 0

    global menus_x := read_config("ui_location","menus_x") + 0
    global menus_y := read_config("ui_location","menus_y") + 0
    global have_pl_x := read_config("ui_location","have_pl_x") + 0
    global have_pl_y := read_config("ui_location","have_pl_y") + 0
    global have_pl2_x := read_config("ui_location","have_pl2_x") + 0
    global have_pl2_y := read_config("ui_location","have_pl2_y") + 0

    global ch_count := read_config("abyss","ch_count") + 0
    global abyss_list := stringToArray(read_config("abyss","abyss_list"))
    global pl_0_list := stringToArray(read_config("abyss","pl_0_list"))
    global pl_17_list := stringToArray(read_config("abyss","pl_17_list"))
    global pl_30_list := stringToArray(read_config("abyss","pl_30_list"))
    global pl_60_list := stringToArray(read_config("abyss","pl_60_list"))
    global pl_77_list := stringToArray(read_config("abyss","pl_77_list"))
    global pl_90_list := stringToArray(read_config("abyss","pl_90_list"))
    global pl_107_list := stringToArray(read_config("abyss","pl_107_list"))

    ; init_character_config(1)
}

init_character_config(index){
    character_section := "character_" + index
    global base_move_speed := read_config(character_section,"base_move_speed") + 0
    global character_move_speed := read_config(character_section,"character_move_speed") + 0
    global character_skill_1 := read_config(character_section,"character_skill_1")
    global character_skill_1_sleep := read_config(character_section,"character_skill_1_sleep")+0
    global character_skill_2 := read_config(character_section,"character_skill_2")
    global character_skill_2_sleep := read_config(character_section,"character_skill_2_sleep")+0
    global character_skill_3 := read_config(character_section,"character_skill_3")
    global character_skill_3_sleep := read_config(character_section,"character_skill_3_sleep")+0
    global character_skill_4 := read_config(character_section,"character_skill_4")
    global character_skill_4_sleep := read_config(character_section,"character_skill_4_sleep")+0
    global character_skill_5 := read_config(character_section,"character_skill_5")
    global character_skill_5_sleep := read_config(character_section,"character_skill_5_sleep")+0
    global character_skill_6 := read_config(character_section,"character_skill_6")
    global character_skill_6_sleep := read_config(character_section,"character_skill_6_sleep")+0
    ; skill(character_skill_5,character_skill_5_sleep)
}

cal_run_time(run_length,move_speed){
    ; 魔法师基础移速840
    global base_move_speed
    return run_length /(1 + move_speed/100)/base_move_speed*1000
}

abyss_times_one_with_config(){
    global character_move_speed
    global character_skill_1
    global character_skill_1_sleep
    global character_skill_2
    global character_skill_2_sleep
    global character_skill_3
    global character_skill_3_sleep
    global character_skill_4
    global character_skill_4_sleep
    global character_skill_5
    global character_skill_5_sleep
    global character_skill_6
    global character_skill_6_sleep

    room_length := 3830

    run_left_time := cal_run_time(2900, character_move_speed)
    run_left(run_left_time)

    run_time_1 := cal_run_time(4914, character_move_speed)
    run(run_time_1)
    skill(character_skill_1, character_skill_1_sleep)

    run_time_2 := cal_run_time(3830, character_move_speed)
    run(run_time_2)
    skill(character_skill_2, character_skill_2_sleep)

    run_time_3 := cal_run_time(3830, character_move_speed)
    run(run_time_3)
    skill(character_skill_3, character_skill_3_sleep)

    if (!can_back_city()) {
        skill(character_skill_4, character_skill_4_sleep)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill(character_skill_5, character_skill_5_sleep)
    }

    if (!can_back_city()) {
        sleep(1000)
    }

    if (!can_back_city()) {
        skill(character_skill_6, character_skill_6_sleep)
    }

    ; if (!can_back_city()) {
    ;     skill("t", 3000)
    ; }
}

transform_from_keyboard(key){
    key := Trim(key)
;    log.info("key:",key)

    global keyboard_dict
    if (keyboard_dict.HasKey(key)) {
        trans_key := keyboard_dict[key]
;        log.info("1 trans_key:",trans_key)
        return trans_key
    } else {
;        log.info("0 trans_key:",key)
        return key
    }
}

send_key(origin_key) {
    key := transform_from_keyboard(origin_key)
    send_key_by_version(key)
}

down(origin_key) {
    key := transform_from_keyboard(origin_key)
    down_by_version(key)
}

up(origin_key) {
    key := transform_from_keyboard(origin_key)
    up_by_version(key)
}

down_up(key,time){
    down(key)
    sleep(time)
    up(key)
}
