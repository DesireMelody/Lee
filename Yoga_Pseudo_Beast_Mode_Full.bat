@echo off
:: Yoga Duet 野兽模式 模拟启动器
:: 请右键以管理员身份运行此文件

echo ========================================
echo 启动 Yoga Duet 伪野兽模式中...
echo ========================================
timeout /t 2 >nul

:: 恢复默认电源方案
powercfg -restoredefaultschemes

:: 添加并启用“终极性能”模式
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -setactive e9a42b02-d5df-448d-aa00-03f14749eb61

:: 设置CPU始终满速
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
powercfg -setacvalueindex scheme_current sub_processor CPUDCPerformanceScaling 0

:: 设置硬盘永不休眠
powercfg -setacvalueindex scheme_current sub_disk DISKIDLE 0

:: 禁用自动亮度调节
powercfg -setacvalueindex scheme_current SUB_VIDEO VIDEOADAPTBRIGHT 0

:: 显示当前电源计划
powercfg /list

echo.
echo ✅ 伪野兽模式已开启！建议重启电脑。
pause