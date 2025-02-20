@ECHO OFF
color 0f
mode con cols=75 lines=30

set ..=**************************************************
set 版本=             当前版本:KernelSU 1.0.1
set .=ECHO.
set 输入双=set /p Input=请直接输入对应数字回车：
set 输入=set /p choice=请直接输入对应数字回车：
set 判断输入=if not "%choice%"=="" set choice=%choice:~0,1%
set 判断输入双=if not "%Input%"=="" set Input=%Input:~0,1%
set 无效=输入无效，请重新输入...
set 传送=goto

TITLE TOMORROW-LIJIE
cd /d "%~dp0"

::判断工具箱是否已解压
if not exist fastboot.exe %传送% 未解压
if exist fastboot.exe %传送% 主页

:未解压
%.% 使用本工具箱请先解压，谢谢

%.% 按下任意键关闭
pause >NUL

EXIT

:主页
CLS
%.%
%.%%版本%
%.%%..%
%.%        作者QQ:2488704020
%.%        QQ群: 771857108
%.%        github地址:https://github.com/tomorrow-lijie/ksu-toolbox
%.%%..%
%.%            使用本工具箱你需要注意的有
%.%
%.%      打开系统设置/我的设备/全部参数/查看内核版本
%.%      内核版本一致干就完了(支持所有安卓机)
%.%      内核的Android版本必须一致
%.%      内核版本接近也可以尝试
%.%      不解BL你看砖不砖就完了
%.%
%.%%..%
%.%      根据你的需求输入对应序号按回车开始
%.%
%.%	1.我要用KernelSU ROOT！（解锁BL后使用）
%.%	
%.%
%输入%
%判断输入%
if /i "%choice%"=="1" %传送% 手机状态
%.%
%.%%无效%
%.%
timeout /t 1 /nobreak >NUL
%传送% 主页



:手机状态
CLS
%.%
%.%%版本% 
%.%%..%
%.%             看看手机是什么状态吧
%.%
%.%              1.开机状态
%.%
%.%              2.fastboot模式
%.% (关机状态下按住电源键和音量减直至进入fastboot界面)
%.%
%.%              3.我也不知道是什么状态
%.%
%.%
%.%%..%
%.%
%输入%
%判断输入%
if /i "%choice%"=="1" %传送% :重启到FASTBOOT
if /i "%choice%"=="2" %传送% FASTBOOT状态
if /i "%choice%"=="3" %传送% SB
%.%
%.%%无效%
timeout /t 2 /nobreak >NUL
%.%
%传送% 手机状态

:SB
CLS
%.%
%.%
%.%  那你真是SB 建议别玩机了回家种地
%.%
%.%
timeout /t 8 /nobreak >NUL
%传送% First


:重启到FASTBOOT
CLS
%.%
%.%%版本%
%.%%..%
%.%          请将手机用力的插入您亲爱的电脑
%.%
%.%            请确保：
%.%      【1.手机BL已解锁】
%.%      【2.手机处于开机状态】
%.%      【3.手机开启USB调试】
%.%      【4.电脑上已经正确安装驱动】
%.%      【5.手机提示USB调试授权时勾选始终点击授权】
%.%
%.%%..%
%.%
%.%        正在检查设备是否正常连接...
%.%
%.%   （若长时间停留在此界面，请检查上述几项）
%.%           （并重启该工具）
%.%%..%
%.%
timeout /t 2 /nobreak >NUL
adb.exe wait-for-device >NUL 2>NUL

CLS
%.%
%.%%版本%
%.%%..%
%.%
%.%
%.%             正在重启到Fastboot模式...
%.%
%.%
%.%%..%
%.%
%.%   （若长时间停留在此界面，请重启该工具）
%.%
adb.exe reboot bootloader >NUL 2>NUL
timeout /t 3 /nobreak >NUL
%传送% 选择内核

:选择内核
:FASTBOOT状态

IF EXIST "boot.img" (goto 存在) ELSE (goto 不存在)
pause

:不存在
%传送% 选择内核1
:存在
%.%%..%
%.%
%.%      检测到boot.img文件存在，是否直接刷入？
%.%        
%.%            1.是                 2.否
%.%%..%
%输入%
%判断输入%
if /i "%choice%"=="1" %传送% 检查并刷入
if /i "%choice%"=="2" %传送% 选择内核1
%.%
%.%
CLS
%.%%无效%
timeout /t 1 /nobreak >NUL
CLS
%传送% 选择内核

:选择内核1
CLS
%.%
%.%%版本%
%.%%..%
%.%              选择内核版本
%.%
%.%          1.android12-5.10.66
%.%          2.android12-5.10.81
%.%          3.android12-5.10.101
%.%          4.android12-5.10.110
%.%          5.android12-5.10.136
%.%          6.android12-5.10.149
%.%          7.android12-5.10.160
%.%          8.android12-5.10.168
%.%          9.android12-5.10.177
%.%          10.android12-5.10.185
%.%          11.android12-5.10.198
%.%          12.android12-5.10.205
%.%          13.android12-5.10.209
%.%          14.android13-5.10.107
%.%          15.android13-5.10.149
%.%          16.android13-5.10.157
%.%          17.android13-5.10.168
%.%          18.android13-5.10.177
%.%          19.android13-5.10.186
%.%          20.android13-5.10.189
%.%          （输入002进入下一页）
%.%%..%
%.%
set inpt=
%输入双%
%判断输入双%
if /i "%Input%"=="1" %传送% 12-5.10.66
if /i "%Input%"=="2" %传送% 12-5.10.81
if /i "%Input%"=="3" %传送% 12-5.10.101
if /i "%Input%"=="4" %传送% 12-5.10.110
if /i "%Input%"=="5" %传送% 12-5.10.136
if /i "%Input%"=="6" %传送% 12-5.10.149
if /i "%Input%"=="7" %传送% 12-5.10.160
if /i "%Input%"=="8" %传送% 12-5.10.168
if /i "%Input%"=="9" %传送% 12-5.10.177
if /i "%Input%"=="10" %传送% 12-5.10.185
if /i "%Input%"=="11" %传送% 12-5.10.198
if /i "%Input%"=="12" %传送% 12-5.10.205
if /i "%Input%"=="13" %传送% 12-5.10.209
if /i "%Input%"=="14" %传送% 13-5.10.107
if /i "%Input%"=="15" %传送% 13-5.10.149
if /i "%Input%"=="16" %传送% 13-5.10.157
if /i "%Input%"=="17" %传送% 13-5.10.168
if /i "%Input%"=="18" %传送% 13-5.10.177
if /i "%Input%"=="19" %传送% 13-5.10.186
if /i "%Input%"=="20" %传送% 13-5.10.189
if /i "%Input%"=="002" %传送% 选择内核2
%.%
%.%%无效%
timeout /t 2 /nobreak >NUL
%.%
%传送% 选择内核1

:选择内核2
CLS
%.%
%.%%版本%
%.%%..%
%.%              选择内核版本
%.%
%.%          21.android13-5.10.198
%.%          22.android13-5.10.205
%.%          23.android13-5.10.209
%.%          24.android13-5.15.41
%.%          25.android13-5.15.74
%.%          26.android13-5.15.78
%.%          27.android13-5.15.94
%.%          28.android13-5.15.104
%.%          29.android13-5.15.119
%.%          30.android13-5.15.123
%.%          31.android13-5.15.137
%.%          32.android13-5.15.144
%.%          33.android13-5.15.148
%.%          34.android14-5.15.110
%.%          35.android14-5.15.131
%.%          36.android14-5.15.137
%.%          37.android14-5.15.144
%.%          38.android14-5.15.148
%.%          39.android14-6.1.25
%.%          40.android14-6.1.43
%.%        （001.上一页  003.下一页）
%.%%..%
%.%
set inpt=
%输入双%
%判断输入双%
if /i "%Input%"=="21" %传送% 13-5.10.198
if /i "%Input%"=="22" %传送% 13-5.10.205
if /i "%Input%"=="23" %传送% 13-5.10.209
if /i "%Input%"=="24" %传送% 13-5.15.41
if /i "%Input%"=="25" %传送% 13-5.15.74
if /i "%Input%"=="26" %传送% 13-5.15.78
if /i "%Input%"=="27" %传送% 13-5.15.94
if /i "%Input%"=="28" %传送% 13-5.15.104
if /i "%Input%"=="29" %传送% 13-5.15.119
if /i "%Input%"=="30" %传送% 13-5.15.123
if /i "%Input%"=="31" %传送% 13-5.15.137
if /i "%Input%"=="32" %传送% 13-5.15.144
if /i "%Input%"=="33" %传送% 13-5.15.148
if /i "%Input%"=="34" %传送% 14-5.15.110
if /i "%Input%"=="35" %传送% 14-5.15.131
if /i "%Input%"=="36" %传送% 14-5.15.137
if /i "%Input%"=="37" %传送% 14-5.15.144
if /i "%Input%"=="38" %传送% 14-5.15.148
if /i "%Input%"=="39" %传送% 14-6.1.25
if /i "%Input%"=="40" %传送% 14-6.1.43
if /i "%Input%"=="001" %传送% 选择内核1
if /i "%Input%"=="003" %传送% 选择内核3
%.%
%.%%无效%
timeout /t 2 /nobreak >NUL
%.%
%传送% 选择内核2

:选择内核3
CLS
%.%
%.%%版本%
%.%%..%
%.%              选择内核版本
%.%
%.%          41.android14-6.1.57
%.%          42.android14-6.1.68
%.%          43.android14-6.1.75
%.%          44.红米note11-pro-4.14.186
%.%             （002.上一页 ）
%.%%..%
%.%
set inpt=
%输入双%
%判断输入双%
if /i "%Input%"=="41" %传送% 14-6.1.57
if /i "%Input%"=="42" %传送% 14-6.1.68
if /i "%Input%"=="43" %传送% 14-6.1.75
if /i "%Input%"=="44" %传送% note11-pro-4.14.186
::if /i "%Input%"=="45" %传送%
::if /i "%Input%"=="46" %传送%
::if /i "%Input%"=="47" %传送%
::if /i "%Input%"=="48" %传送%
::if /i "%Input%"=="49" %传送%
::if /i "%Input%"=="50" %传送%
::if /i "%Input%"=="51" %传送%
::if /i "%Input%"=="52" %传送%
::if /i "%Input%"=="53" %传送%
::if /i "%Input%"=="54" %传送%
::if /i "%Input%"=="55" %传送%
::if /i "%Input%"=="56" %传送%
::if /i "%Input%"=="57" %传送%
::if /i "%Input%"=="58" %传送% 
::if /i "%Input%"=="59" %传送%
::if /i "%Input%"=="60" %传送%
if /i "%Input%"=="002" %传送% 选择内核2
if /i "%Input%"=="003" %传送% 选择内核3
%.%
%.%%无效%
timeout /t 2 /nobreak >NUL
%.%
%传送% 选择内核3

:12-5.10.198
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.198_2024-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.205
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.205_2024-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.209
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.209_2024-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.189
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.189_2023-11-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.198
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.198_2024-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.205
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.205_2024-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.209
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.209_2024-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.123
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.123_2023-11-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.137
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.137_2024-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.144
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.144_2024-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.148
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.148_2024-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-5.15.131
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.131_2023-11-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-5.15.137
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.137_2024-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-5.15.144
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.144_2024-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-5.15.148
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.148_2024-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-6.1.25
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.25_2023-10-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-6.1.43
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.43_2023-11-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-6.1.57
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.57_2024-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-6.1.68
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.68_2024-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-6.1.75
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.75_2024-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.168
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.168_2023-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.177
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.177_2023-07-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.185
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.185_2023-09-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.168
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.168_2023-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.177
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.177_2024-02-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.186
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.186_2023-09-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.94
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.94_2023-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.104
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.104_2023-07-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.119
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.119_2023-09-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:14-5.15.110
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.110_2023-09-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.66
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.66_2022-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.81
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.81_2022-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.101
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.101_2022-05-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.110
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.110_2022-07-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.136
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.136_2022-11-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.149
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.149_2023-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:12-5.10.160
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.160_2023-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.107
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.107_2022-11-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.149
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.149_2023-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.10.157
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.157_2023-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.41
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.41_2022-11-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.74
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.74_2023-01-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:13-5.15.78
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.78_2023-03-boot-gz.img > /null 2>&1
%传送% 检查并刷入

:note11-pro-4.14.186
CLS
%.%
%.%正在下载img镜像文件... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/note11-pro-4.14.186.img > /null 2>&1
%传送% 检查并刷入

:检查并刷入
TITLE TOMORROW-LIJIE
CLS
%.%
%.%%版本%
%.%%..%
%.%
%.%          正在检查设备是否正常连接...
%.%
%.%
%.%      （如果长时间停留在此界面，请检查：）
%.%
%.%      【1.USB线是否正确连接】
%.%      【2.电脑驱动是否正确安装并识别】
%.%      【3.手机是否进入fastboot模式】
%.%
%.%             （并重启该工具）
%.%%..%
timeout /t 2 /nobreak >NUL
fastboot.exe wait-for-device >NUL 2>NUL

CLS
%.%
%.%%版本%
%.%%..%
%.%
%.%
%.%             开始ROOT啦
%.%
%.%
%.%%..%
%.%
%.%    （若出现 OKAY 则刷入成功，否则就失败）
%.%
%.%    （若长时间停留在此界面，请重启该工具）
%.%

::判断并刷写分区(ROOT设备)
if exist boot.img fastboot.exe flash boot boot.img || %传送% ROOT失败
if exist boot.img fastboot.exe flash boot boot.img || %传送% ROOT失败
timeout /t 4 /nobreak >NUL
%传送% FLASH_OVER


:ROOT失败
%.%
%.% ！！出错！！请迅速截图保存刚才的刷入错误提示信息
timeout /t 20 /nobreak >NUL
CLS
%.%
%.%%版本%
%.%%..%
%.%
%.%                   刷入失败！
%.%
%.%           1.检查手机型号是否相匹配
%.%           2.确认Fastboot模式是否正常
%.%           3.尝试更换数据线 更换电脑连接端口
%.%          再不行就来找我吧 作者:2488704020
%.%
%.%            （按任意键退出程序）
%.%%..%
%.%
timeout /t 1 /nobreak >NUL
pause >NUL
EXIT


:ROOT完成
CLS
%.%
%.%%版本%
%.%%..%
%.%
%.%             刷KernelSU ROOT完成啦
%.%             正在重启手机……
%.%
%.%             如果你是刷入KernelSU，完成后
%.%             可以到此工具箱的KSU安装包      
%.%             文件夹移动到手机进行安装。
%.%             也可以前往酷安搜索KernelSU
%.%             进行下载安装！
%.%             
%.%
%.%           （按任意键关闭此窗口）
%.%%..%
%.%
fastboot.exe reboot
pause >NUL

EXIT
