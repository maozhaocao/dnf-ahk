; ==================== 说明开始 ====================

; 无冲、不影响打字的连发 (单线程)
; 按触发键开启对应的组合

; presets: 方案
; defaultPreset: 默认开启的方案

; ==================== 说明结束 ====================

; ==================== 配置开始 ====================

AutoFireSPWorkerPath := A_IsCompiled ? "AutoFireSPWorker.exe" : "AutoFireSPWorker.ahk"
p := AHKProcess(AutoFireSPWorkerPath, "")
