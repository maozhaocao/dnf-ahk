#include <log>
; log.is_out_console := true
log.is_out_file := true
log.is_use_editor := true
log.level := log.level_debug

sleep(time) {
    sleep, time
}

send_key(key) {
    SendInput, { Blind } { %key% DownTemp }
    Sleep, 1
    SendInput, { Blind } { %key% Up }
    Sleep, 1
}

down(key) {
    SendInput, { Blind } { %key% DownTemp }
}

up(key) {
    SendInput, { Blind } { %key% Up }
}

down_up(key, time) {
    down(key)
    sleep(time)
    up(key)
}

pixel_search(X1, Y1, X2, Y2, ColorID) {
    PixelSearch, Px, Py, X1, Y1, X2, Y2, ColorID, 30, Fast RGB
    result := ErrorLevel
    ; log.info(result)
    if (result == 0) {
        ; log.info("true")
        return true
    } else {
        ; log.info("false")
        return false
    }
}

pixel_search_point_threshold(pointX, pointY, colorId, threshold) {
    ; log.info(pointX, pointY, colorId,threshold)
    return pixel_search(pointX - threshold, pointY - threshold, pointX + threshold, pointY + threshold, colorId)
}

pixel_getColor() {
    MouseGetPos, MouseX, MouseY
    PixelGetColor, color, %MouseX%, %MouseY%
    return "%color%"
}

input_value(title) {
    InputBox, index, title, , 100, 150
    if ErrorLevel {
        MsgBox, "操作被取消"
        return -1
    }
    return index
}

run_with_admin() {
    full_command_line := DllCall("GetCommandLine", "str")
    if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
    {
        try
        {
            if A_IsCompiled
                Run * RunAs "%A_ScriptFullPath%" / restart
            else
                Run * RunAs "%A_AhkPath%" / restart "%A_ScriptFullPath%"
        }
        ExitApp
    }
}

list_contains_key(list, key) {
    for index, element in list {
        if (element == key) {
            return true
        }
    }
    return false
}

is_wednesday() {
    day := A_WDay - 1 ;1 位数表示的当前星期几（1-7）。 在所有区域设置中 1 都表示星期天.
    cur_hour := A_Hour
    if (day == 3 and cur_hour >= 6) {
        return true
    }
    if (day == 4 and cur_hour < 6) {
        return true
    }
    return false
}

is_thursday() {
    day := A_WDay - 1 ;1 位数表示的当前星期几（1-7）。 在所有区域设置中 1 都表示星期天.
    cur_hour := A_Hour
    if (day == 4 and cur_hour >= 6) {
        return true
    }
    if (day == 5 and cur_hour < 6) {
        return true
    }
    return false
}

is_friday() {
    day := A_WDay - 1 ;1 位数表示的当前星期几（1-7）。 在所有区域设置中 1 都表示星期天.
    cur_hour := A_Hour
    if (day == 5 and cur_hour >= 6) {
        return true
    }
    if (day == 6 and cur_hour < 6) {
        return true
    }
    return false
}

getColor(MouseX, MouseY) {
    PixelGetColor, color, %MouseX%, %MouseY%, RGB
    color_result := color
    ; log.info("getColor:",MouseX,MouseY,color_result)
    return color_result
}

GetRectRGBList(x1, y1, x2, y2) {
    ; 初始化一个空列表来存储RGB信息
    RGBList := []

    ; 遍历矩形区域内的所有点
    Loop, %(x2 - x1 + 1) * (y2 - y1 + 1) {
        ; 计算当前循环的索引对应的 x 和 y 坐标
        index := A_Index - 1
        row := Floor(index / (x2 - x1 + 1))
        col := Mod(index, x2 - x1 + 1)
        x := x1 + col
        y := y1 + row

        ; 调用 getColor 函数获取当前点的 RGB 信息
        ; 注意：这里假设 getColor 返回的是形如 "R,G,B" 的字符串
        RGB := getColor(x, y)

        ; 将 RGB 信息添加到列表中
        RGBList.Push(RGB)
    }

    ; 返回包含所有点RGB信息的列表
    log.info(RGBList)
    Return RGBList
}

; 函数：GetRectSampledRGBList
; 参数：x1, y1 - 矩形区域的左上角坐标
;       x2, y2 - 矩形区域的右下角坐标
;       sampleCount - 采样点的数量
; 返回值：一个包含采样点 RGB 值的列表（每个 RGB 值是一个包含 R, G, B 的数组）
GetRectSampledRGBList(x1, y1, x2, y2, sampleCount) {
    ; 调用 GetSampledCoords 函数获取降采样后的坐标列表
    SampledCoords := GetSampledCoords(x1, y1, x2, y2, sampleCount)

    ; 初始化一个空列表来存储采样点的 RGB 信息
    SampledRGBList := []

    ; 遍历降采样后的坐标列表，并获取每个坐标的 RGB 值
    Loop, %SampledCoords.Length() {
        coord := SampledCoords[A_Index]
        x := coord[1]
        y := coord[2] ; 注意：这里假设 GetSampledCoords 返回的坐标是 [x, y] 格式

        ; 调用 getColor 函数获取当前坐标的 RGB 值
        ; 注意：这里我们假设 getColor 函数返回的是 [R, G, B] 格式
        RGB := getColor(x, y)

        ; 将 RGB 值添加到列表中
        SampledRGBList.Push(RGB)
    }

    ; 返回包含采样点 RGB 值的列表
    log.info(SampledRGBList) ; 这行是调试用的，可以注释掉或替换为你的日志记录方法
    Return SampledRGBList
}

; 函数：GetSampledCoords
; 参数：x1, y1 - 矩形区域的左上角坐标
;       x2, y2 - 矩形区域的右下角坐标
;       sampleCount - 采样点的数量
; 返回值：一个包含降采样后坐标的列表（每个坐标是一个包含x和y的数组）
GetSampledCoords(x1, y1, x2, y2, sampleCount) {
    totalPixels := (x2 - x1 + 1) * (y2 - y1 + 1)

    ; 如果采样点数大于总像素数，则直接使用总像素数
    If (sampleCount > totalPixels)
        sampleCount := totalPixels

    ; 如果采样点数为0或负数，则返回一个空列表
    If (sampleCount <= 0)
        Return []

    ; 计算采样间隔
    sampleInterval := Ceil(totalPixels / sampleCount)

    ; 初始化一个空列表来存储降采样后的坐标
    SampledCoords := []

    ; 初始化索引计数器
    index := 0

    ; 遍历所有点，但按照采样间隔进行采样
    Loop, %totalPixels {
        ; 检查当前索引是否是采样点
        If (Mod(index, sampleInterval) == 0) {
            ; 计算当前采样点的 x 和 y 坐标
            row := Floor(index / (x2 - x1 + 1))
            col := Mod(index, x2 - x1 + 1)
            x := x1 + col
            y := y1 + row
            ; 创建一个数组来存储坐标，并添加到列表中
            coord := [x, y]
            SampledCoords.Push(coord)
        }
        ; 增加索引计数器
        index++
        }
        ; 返回包含降采样后坐标的列表
        ; log.info(SampledCoords)
        Return SampledCoords
}

CalculateSimilarity(targetRGBList, x1, y1, x2, y2, sampleCount) {
    ; 获取采样点的坐标列表
    sampledPoints := GetSampledCoords(x1, y1, x2, y2, sampleCount)

    ; 初始化相似点的计数器
    similarPointsCount := 0

    ; 遍历采样点列表并检查颜色是否相似
    Loop, %sampledPoints.Length() {
        point := sampledPoints[A_Index]
        pointX := point[1]
        pointY := point[2]
        targetColor := targetRGBList[A_Index]
        ; log.info("targetColor",targetColor)
        ; log.info("similarPointsCount",similarPointsCount)

        ; 检查颜色是否相似
        result := pixel_search_point_threshold(pointX, pointY, targetColor, 3)
        ; log.info("result",result)
        If (result) {
            similarPointsCount := similarPointsCount + 1
        }
    }

    ; 计算相似度百分比
    similarityPercentage := (similarPointsCount / sampleCount) * 100

    ; 确保相似度百分比在0到100之间（尽管数学上这是保证的，但出于安全考虑还是加上）
    If (similarityPercentage < 0)
        similarityPercentage := 0
    Else If (similarityPercentage > 100)
        similarityPercentage := 100

    ; 返回相似度百分比
    Return similarityPercentage
}

; 函数：FindMaxIndex
; 参数：arr - 待搜索的整数列表
; 返回值：列表中最大元素的索引
FindMaxIndex(arr) {
    ; 初始化最大值的索引为列表的第一个元素
    maxIndex := 1
    maxValue := arr[1]

    ; 遍历列表中的每个元素
    Loop, %arr.Length()
    {
        ; 获取当前元素的索引（注意AutoHotkey的索引从1开始）
        currentIndex := A_Index
        currentValue := arr[currentIndex] ; 由于A_Index从1开始，而数组索引从0开始（若使用数组表示法），故需减1

        ; 若当前元素大于当前最大值，则更新最大值及其索引
        If (currentValue > maxValue)
        {
            maxValue := currentValue
            maxIndex := currentIndex
        }
    }

    ; 返回最大值的索引
    Return maxIndex
}