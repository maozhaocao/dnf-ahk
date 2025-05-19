
read_config(section,key){
    currentDir := A_ScriptDir
    ; 构建完整文件路径
    keyboardPath := currentDir . "\keyboard.ini"
    IniRead, read_value, %keyboardPath%, %section%, %key%
    return %read_value%
}

init_config(){
    global skill_1  := read_config("keyboard","skill_1")
    global skill_2  := read_config("keyboard","skill_2")
    global skill_3  := read_config("keyboard","skill_3")
    global skill_4  := read_config("keyboard","skill_4")
    global skill_5  := read_config("keyboard","skill_5")
    global skill_6  := read_config("keyboard","skill_6")
    global skill_7  := read_config("keyboard","skill_7")
    global skill_expand_1  := read_config("keyboard","skill_expand_1")
    global skill_expand_2  := read_config("keyboard","skill_expand_2")
    global skill_expand_3  := read_config("keyboard","skill_expand_3")
    global skill_expand_4  := read_config("keyboard","skill_expand_4")
    global skill_expand_5  := read_config("keyboard","skill_expand_5")
    global skill_expand_6  := read_config("keyboard","skill_expand_6")
    global skill_expand_7  := read_config("keyboard","skill_expand_7")
    global mall  := read_config("keyboard","mall")
    global key_continue  := read_config("keyboard","key_continue")
    global back_city  := read_config("keyboard","back_city")
    global skill_z  := read_config("keyboard","skill_z")
    global skill_x  := read_config("keyboard","skill_x")
    global skill_c  := read_config("keyboard","skill_c")
    global skill_space  := read_config("keyboard","skill_space")
    global key_enter  := read_config("keyboard","key_enter")
    global key_up  := read_config("keyboard","key_up")
    global key_down  := read_config("keyboard","key_down")
    global key_left  := read_config("keyboard","key_left")
    global key_right  := read_config("keyboard","key_right")
    global key_esc  := read_config("keyboard","key_esc")
    global key_pick  := read_config("keyboard","key_pick")

    global menus_x  := read_config("ui_location","menus_x") + 0
    global menus_y  := read_config("ui_location","menus_y") + 0
    global back_city_x  := read_config("ui_location","back_city_x") + 0
    global back_city_y  := read_config("ui_location","back_city_y") + 0
    global have_pl_x  := read_config("ui_location","have_pl_x") + 0
    global have_pl_y  := read_config("ui_location","have_pl_y") + 0
    global have_pl2_x  := read_config("ui_location","have_pl2_x") + 0
    global have_pl2_y  := read_config("ui_location","have_pl2_y") + 0

    global ch_count  := read_config("abyss","ch_count") + 0
    global abyss_list  := stringToArray(read_config("abyss","abyss_list"))
    global pl_0_list  := stringToArray(read_config("abyss","pl_0_list"))
    global pl_17_list  := stringToArray(read_config("abyss","pl_17_list"))
    global pl_30_list  := stringToArray(read_config("abyss","pl_30_list"))
    global pl_60_list  := stringToArray(read_config("abyss","pl_60_list"))
    global pl_77_list  := stringToArray(read_config("abyss","pl_77_list"))
    global pl_90_list  := stringToArray(read_config("abyss","pl_90_list"))
    global pl_107_list  := stringToArray(read_config("abyss","pl_107_list"))

    ; init_character_config(1)
}

init_character_config(index){
    character_section := "character_" + index
    global character_move_speed  := read_config(character_section,"character_move_speed") + 0
    global character_skill_1  := read_config(character_section,"character_skill_1")
    global character_skill_1_sleep  := read_config(character_section,"character_skill_1_sleep")+0
    global character_skill_2  := read_config(character_section,"character_skill_2")
    global character_skill_2_sleep  := read_config(character_section,"character_skill_2_sleep")+0
    global character_skill_3  := read_config(character_section,"character_skill_3")
    global character_skill_3_sleep  := read_config(character_section,"character_skill_3_sleep")+0
    global character_skill_4  := read_config(character_section,"character_skill_4")
    global character_skill_4_sleep  := read_config(character_section,"character_skill_4_sleep")+0
    global character_skill_5  := read_config(character_section,"character_skill_5")
    global character_skill_5_sleep  := read_config(character_section,"character_skill_5_sleep")+0
    ; skill(character_skill_5,character_skill_5_sleep)
}

cal_run_time(run_length,move_speed){
    base_move_speed := 500
    return run_length /(1 + move_speed/100)/base_move_speed*1000
}


abyss_times_one_with_config(){
    room_length := 1920

    run_left_time := cal_run_time(room_length*0.8, character_move_speed)
    run_left(run_left_time)

    run_time_1 := cal_run_time(room_length*1.4, character_move_speed)
    run(run_time_1)
    skill(character_skill_1, character_skill_1_sleep)

    run_time_2 := cal_run_time(room_length*1, character_move_speed)
    run(run_time_2)
    skill(character_skill_2, character_skill_2_sleep)

    run_time_3 := cal_run_time(room_length*1.1, character_move_speed)
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

    ; if (!can_back_city()) {
    ;     skill("q", 1000)
    ; }

    ; if (!can_back_city()) {
    ;     skill("t", 3000)
    ; }
}