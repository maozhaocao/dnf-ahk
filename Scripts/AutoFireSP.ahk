; ==================== 说明开始 ====================

; 无冲、不影响打字的连发 (单线程)
; 按触发键开启对应的组合

; presets: 方案
; defaultPreset: 默认开启的方案

; ==================== 说明结束 ====================

; ==================== 配置开始 ====================

global presets := { "F6": ["全键连发", "x,z,a,d,f,g,v,q,w,e,r,t,tab,y,space"]
                  , "F7": ["TEST", "x,z,a,d,f,g,v,q,w,e,r,t,tab,y,space"]}

global defaultPreset = "F7"

; ==================== 配置结束 ====================

#KeyHistory 0

; key -> keycode
global autoFireKeys := {}

fnAutoFireTick := Func("AutoFireTick").bind()
SetTimer, %fnAutoFireTick%, 0

AutoFireTick() {
    If WinActive("ahk_exe DNF.exe") {
        For key, keycode in autoFireKeys {
            If (GetKeyState(key)) {
                Kbd_RobustSend(keycode)
            }
        }
    }
}

; 应用 preset
ApplyPreset(toggleKey) {
    ; 清空 autoFireKeys
    autoFireKeys := {}
    
    ; 设置 autoFireKeys
    val := presets[toggleKey]
    for _, key in StrSplit(val[2], ",") {
        autoFireKeys[key] := Kbd_GetSpecialKeycode(key)
    }
    UI_ToolTip1s("切换至 -> " . val[1])
}

; 注册切换 preset 的 hotkey
for k, v in presets {
    processes[k] := []
    fn := Func("ApplyPreset").bind(k)
    Hotkey, %k%, %fn%
}

ApplyPreset(defaultPreset)
