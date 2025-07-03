

sleep(time) {
    Sleep(time)
}
 
send_key_by_version(key) {
    SendInput("{Blind}{" key "}")
}
 
down_by_version(key) {
    SendInput("{Blind}{" key " DownTemp}")
}
 
up_by_version(key) {
    SendInput("{Blind}{" key " Up}")
}
 
pixel_search(X1, Y1, X2, Y2, ColorID) {
    if PixelSearch(&Px, &Py, X1, Y1, X2, Y2, ColorID, 30, "Fast RGB") {
        ; log.info("true") 
        return true
    } else {
        ; log.info("false") 
        return false 
    }
}
 
pixel_search_point_threshold(pointX, pointY, colorId, threshold) {
    ; log.info(pointX,  pointY, colorId, threshold)
    return pixel_search(
        pointX - threshold, 
        pointY - threshold, 
        pointX + threshold, 
        pointY + threshold, 
        colorId
    )
}
 
pixel_getColor() {
    MouseGetPos(&MouseX, &MouseY)
    color := PixelGetColor(MouseX, MouseY)
    return color ; v2 中不需要引号包裹
}
 
input_value(title) {
    index := InputBox(title, , , 100, 150)
    if index.Result = "Cancel" {
        MsgBox("操作被取消")
        return -1
    }
    return index.Value 
}
 
run_with_admin() {
    full_command_line := DllCall("GetCommandLine", "Str")
    if not (A_IsAdmin or InStr(full_command_line, " /restart")) {
        try {
            if A_IsCompiled 
                Run('*RunAs "' A_ScriptFullPath '" /restart')
            else 
                Run('*RunAs "' A_AhkPath '" /restart "' A_ScriptFullPath '"')
        }
        ExitApp
    }
}
 
list_contains_key(list, key) {
    for element in list {
        if (element == key) {
            return true 
        }
    }
    return false 
}

; ===== AHK v2 转换 - 保持函数名不变 =====
is_wednesday() {
    ; 1 位数表示的当前星期几（1-7）。在所有区域设置中 1 都表示星期天 
    day := A_WDay - 1 
    cur_hour := A_Hour
    
    if (day == 3 && cur_hour >= 6) {
        return true
    }
    if (day == 4 && cur_hour < 6) {
        return true
    }
    return false
}
 
is_thursday() {
    day := A_WDay - 1
    cur_hour := A_Hour 
    
    if (day == 4 && cur_hour >= 6) {
        return true 
    }
    if (day == 5 && cur_hour < 6) {
        return true 
    }
    return false 
}
 
is_friday() {
    day := A_WDay - 1 
    cur_hour := A_Hour
    
    if (day == 5 && cur_hour >= 6) {
        return true
    }
    if (day == 6 && cur_hour < 6) {
        return true
    }
    return false
}
 
is_saturday() {
    ; 注意：此函数没有减1，与其他函数不同 
    day := A_WDay
    cur_hour := A_Hour 
    
    if (day == 7 && cur_hour >= 6) {
        return true
    }
    if (day == 1 && cur_hour < 6) {
        return true
    }
    return false
}
 
is_sunday() {
    ; 注意：此函数没有减1，与其他函数不同 
    day := A_WDay
    cur_hour := A_Hour 
    
    if (day == 1 && cur_hour >= 6) {
        return true 
    }
    if (day == 2 && cur_hour < 6) {
        return true 
    }
    return false 
}


; ===== AHK v2 转换版 - 2025年7月1日 17:12 ===== 
read_ini_value(ini_path, section, key) {
    return IniRead(ini_path, section, key)
}


getColor(MouseX, MouseY) {
    color := PixelGetColor(MouseX, MouseY, "RGB")
    ; log.info("getColor:",  MouseX, MouseY, color)
    return color 
}
 
GetRectRGBList(x1, y1, x2, y2) {
    ; 初始化空数组 
    RGBList := []
    
    ; 计算总像素数 
    totalPixels := (x2 - x1 + 1) * (y2 - y1 + 1)
    
    ; 遍历矩形区域 
    Loop totalPixels {
        ; 计算当前坐标 
        index := A_Index - 1 
        row := Floor(index / (x2 - x1 + 1))
        col := Mod(index, (x2 - x1 + 1))
        x := x1 + col 
        y := y1 + row 
        
        ; 获取颜色并添加到数组 
        RGBList.Push(getColor(x, y))
    }
    
    ; log.info(RGBList) 
    return RGBList 
}
 
GetRectSampledRGBList(x1, y1, x2, y2, sampleCount) {
    ; 获取采样点坐标 
    SampledCoords := GetSampledCoords(x1, y1, x2, y2, sampleCount)
    
    ; 初始化采样数组 
    SampledRGBList := []
    
    ; 遍历采样点 
    Loop SampledCoords.Length {
        coord := SampledCoords[A_Index]
        x := coord[1]
        y := coord[2]
        SampledRGBList.Push(getColor(x, y))
    }
    
    ; log.info(SampledRGBList) 
    return SampledRGBList 
}
 
GetSampledCoords(x1, y1, x2, y2, sampleCount) {
    totalPixels := (x2 - x1 + 1) * (y2 - y1 + 1)
    
    ; 调整采样点数 
    if (sampleCount > totalPixels)
        sampleCount := totalPixels 
        
    if (sampleCount <= 0)
        return []
    
    ; 计算采样间隔 
    sampleInterval := Ceil(totalPixels / sampleCount)
    
    ; 初始化采样坐标数组 
    SampledCoords := []
    index := 0 
    
    ; 遍历像素点 
    Loop totalPixels {
        if (Mod(index, sampleInterval) == 0) {
            row := Floor(index / (x2 - x1 + 1))
            col := Mod(index, (x2 - x1 + 1))
            x := x1 + col 
            y := y1 + row 
            SampledCoords.Push([x, y])
        }
        index++
    }
    
    ; log.info(SampledCoords) 
    return SampledCoords 
}
 
CalculateSimilarity(targetRGBList, x1, y1, x2, y2, sampleCount) {
    ; 获取采样点 
    sampledPoints := GetSampledCoords(x1, y1, x2, y2, sampleCount)
    similarPointsCount := 0 
    
    ; 检查颜色相似度 
    Loop sampledPoints.Length {
        point := sampledPoints[A_Index]
        pointX := point[1]
        pointY := point[2]
        targetColor := targetRGBList[A_Index]
        
        ; log.info("targetColor",  targetColor)
        ; log.info("similarPointsCount",  similarPointsCount)
        
        if (pixel_search_point_threshold(pointX, pointY, targetColor, 3)) {
            similarPointsCount += 1 
        }
    }
    
    ; 计算相似度百分比 
    similarityPercentage := (similarPointsCount / sampleCount) * 100 
    similarityPercentage := Min(Max(similarityPercentage, 0), 100)
    
    return similarityPercentage 
}
 
FindMaxIndex(arr) {
    maxIndex := 1 
    maxValue := arr[1]
    
    Loop arr.Length {
        currentIndex := A_Index 
        currentValue := arr[currentIndex]
        
        if (currentValue > maxValue) {
            maxValue := currentValue 
            maxIndex := currentIndex 
        }
    }
    
    return maxIndex 
}
 
NowToUnix() {
    ; 获取当前时间戳（毫秒）
    return DateDiff(A_Now, "19700101000000", "Seconds") * 1000 + A_Millisecond 
}
 
stringToArray(str, convertToInt := true) {
    array := StrSplit(str, ",")
    
    Loop array.Length {
        value := Trim(array[A_Index])
        if (convertToInt && value ~= "^\d+$") {
            array[A_Index] := Integer(value)
        } else {
            array[A_Index] := value 
        }
    }
    
    return array 
}

; ===== AHK v2 专用函数实现 ===== 
toggle_pause() {
    global isPaused
    isPaused := !isPaused
    if isPaused {
        Pause(true)
        SoundBeep(500, 300)
    } else {
        Pause(false)
        TrayTip("脚本状态", "已恢复", 1, 1)
    }
}
 
exit_app() {
    ExitApp()
}
 
reload_script() {
    Reload()
}
 
copy_pixel() {
    global MouseX, MouseY, mouseColor
    MouseGetPos(&MouseX, &MouseY)
    mouseColor := PixelGetColor(MouseX, MouseY)
}
 
paste_pixel() {
    global MouseX, MouseY, mouseColor 
    SendText MouseX "," MouseY "," mouseColor
}
