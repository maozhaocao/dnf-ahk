## DNF AHK 脚本

### 简介

本项目【有一定上手门槛】，需要一定 DIY 能力。所有功能均由 `Scripts/` 下对应脚本实现，使用者需了解脚本功能，并自行修改脚本中的【配置】区域。

脚本更新时，请自行阅读 commit 信息，并做好自己配置的备份。

本项目依赖 [AutoHotKey (V2)](https://www.autohotkey.com/), 需提前安装

### 功能特色

#### 连发 `Scripts/AutoFireMP.ahk` 和 `Scripts/AutoFireMP.ahk`

特性：

1. 不影响打字
2. 多键无冲 (由于神秘原因无冲有时候会卡，欢迎 Issues 区交流)
3. 方便在多种方案之间切换

MP 和 SP 版说明：

- MP 是 MultiProcessing 多进程版本，即用不同进程负责不同的按键，以此实现无冲连发。此方法的连发速度较快，但由于神秘原因，无冲仍不够稳定。键位在 `Scripts/AutoFireMP.ahk` 中设置。
- SP 是 SingleProcessing 单进程版本，用单个进程轮询设置连发的按键，以此实现无冲连发，此方法的无冲更稳定，但由于使用轮询，连发速度较慢。键位在 `AutoFireSPWorker.ahk` 中设置。

是的没错，设置的位置不太一样。有兴趣的朋友可以提 PR 改进。

#### 自动补药 `Scripts/BUFF.ahk`

目前设置的是自动吃超速和斗神，用户可自行修改，以适配自己的情况

#### 每日任务 `Scripts/ChangWan.ahk`

自动点畅玩任务

#### DevTools `Scripts/DevTools.ahk`

一些开发工具，譬如抓取鼠标的坐标和灰度值等

### 进阶 (开发者指南)

你可以在 `Scripts/` 中加入自己的脚本，并可以调用 `Lib/` 中的库函数，来实现你想要的功能

### 让这个项目更好

使用之余, 欢迎提交更多脚本和创意; 在 issues 中提交 bug 和改进意见
