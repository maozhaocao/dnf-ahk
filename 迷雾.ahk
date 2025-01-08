#Include AHK_角色列表.ahk
#Include abyss_reminder.ahk
run_with_admin()

F2::
{
    index := input_value("请输入当前角色id")
    if (index <= 0) {
        return
    }
    ch_count := 33
    while (index <= ch_count) {
        open_万象固定(index)
        index := index + 1
        back_select_character()
        sleep(4000)
        skill("right", 2000)
        skill("space", 5000)
    }
}

F3::
{
    decompose_ss(24)
    return
}

open_万象固定(index) {
    if (index == 4 or index == 5) {
        return
    }


    select_guijian_list := [1, 2, 3, 6, 7, 8, 13, 14]
    select_one_list := [12, 17, 27]
    select_two_list := [9, 10, 15]

    decompose_times := 0
    while (decompose_times < 20) {
        sleep(1000)
        times := 24
        cur_times := 0
        while (cur_times < times) {
            skill("1", 500)
            move_and_click_one(847, 280, 400)
            move_and_click_one(847, 312, 400)
            if (list_contains_key(select_guijian_list, index)) {
                move_and_click_one(847, 312, 400)
                move_and_click_one(847, 347, 400)
            }

            if (list_contains_key(select_one_list, index)) {
                move_and_click_one(847, 420, 400) ;1
            } else if (list_contains_key(select_one_list, index)) {
                move_and_click_one(847, 490, 400) ;2
            }
            else {
                move_and_click_one(847, 637, 400) ;4
            }


            move_and_click_one(757, 791, 400)
            skill("space", 500)
            skill("space", 500)
            skill("space", 500)
            skill("space", 300)
            cur_times := cur_times + 1

            if (!pixel_search_point(272, 1056, 0xFFAE00)) {
                break
            }
        }

        skill("space", 300)
        decompose_ss(cur_times)

        if (!pixel_search_point(272, 1056, 0xFFAE00)) {
            break
        }
        decompose_times := decompose_times + 1
    }
}

decompose_ss(times) {
    skill("esc", 500)
    move_and_click(547, 513, 800)
    fix_decompose_machine()
    skill("space", 500)
    skill("space", 500)
    move_and_click(978, 593, 800)

    row := 3
    col := 8
    start_x := 1136
    start_y := 576
    per_add := 54
    cur_times := 0

    row_cur := 0
    while (row_cur < row) {
        col_cur := 0
        while (col_cur < col) {
            cur_point_x := start_x + col_cur * per_add
            cur_point_y := start_y + row_cur * per_add
            move_and_click_one(cur_point_x, cur_point_y, 400)
            col_cur := col_cur + 1
            cur_times := cur_times + 1
            if (cur_times >= times) {
                break
            }
        }
        row_cur := row_cur + 1
        if (cur_times >= times) {
            break
        }
    }

    Sleep(500)
    skill("space", 500)
    skill("space", 500)
    skill("space", 500)
    skill("space", 500)
    Sleep(3000)
    skill("esc", 500)
}

F12:: Reload

^!r:: Reload

MouseX := 0
MouseY := 0
mouseColor := ""

^!z:: ; Control+Alt+Z 复制当前鼠标所在像素.
{
    global MouseX, MouseY, mouseColor
    MouseGetPos, MouseX, MouseY
    PixelGetColor, mouseColor, %MouseX%, %MouseY%
    return
    ; MouseGetPos MouseX, MouseY
    ; mouseColor:= pixel_getColor(MouseX, MouseY)
}

^!x:: ; Control+Alt+x 粘贴复制的像素.
{
    global MouseX, MouseY, mouseColor
    Send %MouseX%, %MouseY%, %mouseColor%
    return
}