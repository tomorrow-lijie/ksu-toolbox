@ECHO OFF
color 0f
mode con cols=75 lines=30

set ..=**************************************************
set �汾=             ��ǰ�汾:KernelSU 1.0.1
set .=ECHO.
set ����˫=set /p Input=��ֱ�������Ӧ���ֻس���
set ����=set /p choice=��ֱ�������Ӧ���ֻس���
set �ж�����=if not "%choice%"=="" set choice=%choice:~0,1%
set �ж�����˫=if not "%Input%"=="" set Input=%Input:~0,1%
set ��Ч=������Ч������������...
set ����=goto

TITLE TOMORROW-LIJIE
cd /d "%~dp0"

::�жϹ������Ƿ��ѽ�ѹ
if not exist fastboot.exe %����% δ��ѹ
if exist fastboot.exe %����% ��ҳ

:δ��ѹ
%.% ʹ�ñ����������Ƚ�ѹ��лл

%.% ����������ر�
pause >NUL

EXIT

:��ҳ
CLS
%.%
%.%%�汾%
%.%%..%
%.%        ����QQ:2488704020
%.%        QQȺ: 771857108
%.%        github��ַ:https://github.com/tomorrow-lijie/ksu-toolbox
%.%%..%
%.%            ʹ�ñ�����������Ҫע�����
%.%
%.%      ��ϵͳ����/�ҵ��豸/ȫ������/�鿴�ں˰汾
%.%      �ں˰汾һ�¸ɾ�����(֧�����а�׿��)
%.%      �ں˵�Android�汾����һ��
%.%      �ں˰汾�ӽ�Ҳ���Գ���
%.%      ����BL�㿴ש��ש������
%.%
%.%%..%
%.%      ����������������Ӧ��Ű��س���ʼ
%.%
%.%	1.��Ҫ��KernelSU ROOT��������BL��ʹ�ã�
%.%	
%.%
%����%
%�ж�����%
if /i "%choice%"=="1" %����% �ֻ�״̬
%.%
%.%%��Ч%
%.%
timeout /t 1 /nobreak >NUL
%����% ��ҳ



:�ֻ�״̬
CLS
%.%
%.%%�汾% 
%.%%..%
%.%             �����ֻ���ʲô״̬��
%.%
%.%              1.����״̬
%.%
%.%              2.fastbootģʽ
%.% (�ػ�״̬�°�ס��Դ����������ֱ������fastboot����)
%.%
%.%              3.��Ҳ��֪����ʲô״̬
%.%
%.%
%.%%..%
%.%
%����%
%�ж�����%
if /i "%choice%"=="1" %����% :������FASTBOOT
if /i "%choice%"=="2" %����% FASTBOOT״̬
if /i "%choice%"=="3" %����% SB
%.%
%.%%��Ч%
timeout /t 2 /nobreak >NUL
%.%
%����% �ֻ�״̬

:SB
CLS
%.%
%.%
%.%  ��������SB ���������˻ؼ��ֵ�
%.%
%.%
timeout /t 8 /nobreak >NUL
%����% First


:������FASTBOOT
CLS
%.%
%.%%�汾%
%.%%..%
%.%          �뽫�ֻ������Ĳ������װ��ĵ���
%.%
%.%            ��ȷ����
%.%      ��1.�ֻ�BL�ѽ�����
%.%      ��2.�ֻ����ڿ���״̬��
%.%      ��3.�ֻ�����USB���ԡ�
%.%      ��4.�������Ѿ���ȷ��װ������
%.%      ��5.�ֻ���ʾUSB������Ȩʱ��ѡʼ�յ����Ȩ��
%.%
%.%%..%
%.%
%.%        ���ڼ���豸�Ƿ���������...
%.%
%.%   ������ʱ��ͣ���ڴ˽��棬�����������
%.%           ���������ù��ߣ�
%.%%..%
%.%
timeout /t 2 /nobreak >NUL
adb.exe wait-for-device >NUL 2>NUL

CLS
%.%
%.%%�汾%
%.%%..%
%.%
%.%
%.%             ����������Fastbootģʽ...
%.%
%.%
%.%%..%
%.%
%.%   ������ʱ��ͣ���ڴ˽��棬�������ù��ߣ�
%.%
adb.exe reboot bootloader >NUL 2>NUL
timeout /t 3 /nobreak >NUL
%����% ѡ���ں�

:ѡ���ں�
:FASTBOOT״̬

IF EXIST "boot.img" (goto ����) ELSE (goto ������)
pause

:������
%����% ѡ���ں�1
:����
%.%%..%
%.%
%.%      ��⵽boot.img�ļ����ڣ��Ƿ�ֱ��ˢ�룿
%.%        
%.%            1.��                 2.��
%.%%..%
%����%
%�ж�����%
if /i "%choice%"=="1" %����% ��鲢ˢ��
if /i "%choice%"=="2" %����% ѡ���ں�1
%.%
%.%
CLS
%.%%��Ч%
timeout /t 1 /nobreak >NUL
CLS
%����% ѡ���ں�

:ѡ���ں�1
CLS
%.%
%.%%�汾%
%.%%..%
%.%              ѡ���ں˰汾
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
%.%          ������002������һҳ��
%.%%..%
%.%
set inpt=
%����˫%
%�ж�����˫%
if /i "%Input%"=="1" %����% 12-5.10.66
if /i "%Input%"=="2" %����% 12-5.10.81
if /i "%Input%"=="3" %����% 12-5.10.101
if /i "%Input%"=="4" %����% 12-5.10.110
if /i "%Input%"=="5" %����% 12-5.10.136
if /i "%Input%"=="6" %����% 12-5.10.149
if /i "%Input%"=="7" %����% 12-5.10.160
if /i "%Input%"=="8" %����% 12-5.10.168
if /i "%Input%"=="9" %����% 12-5.10.177
if /i "%Input%"=="10" %����% 12-5.10.185
if /i "%Input%"=="11" %����% 12-5.10.198
if /i "%Input%"=="12" %����% 12-5.10.205
if /i "%Input%"=="13" %����% 12-5.10.209
if /i "%Input%"=="14" %����% 13-5.10.107
if /i "%Input%"=="15" %����% 13-5.10.149
if /i "%Input%"=="16" %����% 13-5.10.157
if /i "%Input%"=="17" %����% 13-5.10.168
if /i "%Input%"=="18" %����% 13-5.10.177
if /i "%Input%"=="19" %����% 13-5.10.186
if /i "%Input%"=="20" %����% 13-5.10.189
if /i "%Input%"=="002" %����% ѡ���ں�2
%.%
%.%%��Ч%
timeout /t 2 /nobreak >NUL
%.%
%����% ѡ���ں�1

:ѡ���ں�2
CLS
%.%
%.%%�汾%
%.%%..%
%.%              ѡ���ں˰汾
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
%.%        ��001.��һҳ  003.��һҳ��
%.%%..%
%.%
set inpt=
%����˫%
%�ж�����˫%
if /i "%Input%"=="21" %����% 13-5.10.198
if /i "%Input%"=="22" %����% 13-5.10.205
if /i "%Input%"=="23" %����% 13-5.10.209
if /i "%Input%"=="24" %����% 13-5.15.41
if /i "%Input%"=="25" %����% 13-5.15.74
if /i "%Input%"=="26" %����% 13-5.15.78
if /i "%Input%"=="27" %����% 13-5.15.94
if /i "%Input%"=="28" %����% 13-5.15.104
if /i "%Input%"=="29" %����% 13-5.15.119
if /i "%Input%"=="30" %����% 13-5.15.123
if /i "%Input%"=="31" %����% 13-5.15.137
if /i "%Input%"=="32" %����% 13-5.15.144
if /i "%Input%"=="33" %����% 13-5.15.148
if /i "%Input%"=="34" %����% 14-5.15.110
if /i "%Input%"=="35" %����% 14-5.15.131
if /i "%Input%"=="36" %����% 14-5.15.137
if /i "%Input%"=="37" %����% 14-5.15.144
if /i "%Input%"=="38" %����% 14-5.15.148
if /i "%Input%"=="39" %����% 14-6.1.25
if /i "%Input%"=="40" %����% 14-6.1.43
if /i "%Input%"=="001" %����% ѡ���ں�1
if /i "%Input%"=="003" %����% ѡ���ں�3
%.%
%.%%��Ч%
timeout /t 2 /nobreak >NUL
%.%
%����% ѡ���ں�2

:ѡ���ں�3
CLS
%.%
%.%%�汾%
%.%%..%
%.%              ѡ���ں˰汾
%.%
%.%          41.android14-6.1.57
%.%          42.android14-6.1.68
%.%          43.android14-6.1.75
%.%          44.����note11-pro-4.14.186
%.%             ��002.��һҳ ��
%.%%..%
%.%
set inpt=
%����˫%
%�ж�����˫%
if /i "%Input%"=="41" %����% 14-6.1.57
if /i "%Input%"=="42" %����% 14-6.1.68
if /i "%Input%"=="43" %����% 14-6.1.75
if /i "%Input%"=="44" %����% note11-pro-4.14.186
::if /i "%Input%"=="45" %����%
::if /i "%Input%"=="46" %����%
::if /i "%Input%"=="47" %����%
::if /i "%Input%"=="48" %����%
::if /i "%Input%"=="49" %����%
::if /i "%Input%"=="50" %����%
::if /i "%Input%"=="51" %����%
::if /i "%Input%"=="52" %����%
::if /i "%Input%"=="53" %����%
::if /i "%Input%"=="54" %����%
::if /i "%Input%"=="55" %����%
::if /i "%Input%"=="56" %����%
::if /i "%Input%"=="57" %����%
::if /i "%Input%"=="58" %����% 
::if /i "%Input%"=="59" %����%
::if /i "%Input%"=="60" %����%
if /i "%Input%"=="002" %����% ѡ���ں�2
if /i "%Input%"=="003" %����% ѡ���ں�3
%.%
%.%%��Ч%
timeout /t 2 /nobreak >NUL
%.%
%����% ѡ���ں�3

:12-5.10.198
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.198_2024-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.205
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.205_2024-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.209
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.209_2024-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.189
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.189_2023-11-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.198
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.198_2024-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.205
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.205_2024-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.209
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.209_2024-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.123
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.123_2023-11-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.137
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.137_2024-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.144
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.144_2024-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.148
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.148_2024-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-5.15.131
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.131_2023-11-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-5.15.137
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.137_2024-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-5.15.144
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.144_2024-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-5.15.148
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.148_2024-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-6.1.25
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.25_2023-10-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-6.1.43
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.43_2023-11-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-6.1.57
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.57_2024-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-6.1.68
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.68_2024-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-6.1.75
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-6.1.75_2024-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.168
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.168_2023-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.177
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.177_2023-07-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.185
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.185_2023-09-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.168
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.168_2023-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.177
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.177_2024-02-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.186
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.186_2023-09-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.94
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.94_2023-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.104
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.104_2023-07-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.119
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.119_2023-09-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:14-5.15.110
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android14-5.15.110_2023-09-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.66
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.66_2022-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.81
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.81_2022-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.101
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.101_2022-05-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.110
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.110_2022-07-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.136
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.136_2022-11-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.149
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.149_2023-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:12-5.10.160
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android12-5.10.160_2023-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.107
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.107_2022-11-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.149
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.149_2023-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.10.157
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.10.157_2023-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.41
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.41_2022-11-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.74
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.74_2023-01-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:13-5.15.78
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/android13-5.15.78_2023-03-boot-gz.img > /null 2>&1
%����% ��鲢ˢ��

:note11-pro-4.14.186
CLS
%.%
%.%��������img�����ļ�... 
@wget -O boot.img https://mirror.ghproxy.com/https://github.com/tomorrow-lijie/ksu-toolbox/blob/main/note11-pro-4.14.186.img > /null 2>&1
%����% ��鲢ˢ��

:��鲢ˢ��
TITLE TOMORROW-LIJIE
CLS
%.%
%.%%�汾%
%.%%..%
%.%
%.%          ���ڼ���豸�Ƿ���������...
%.%
%.%
%.%      �������ʱ��ͣ���ڴ˽��棬���飺��
%.%
%.%      ��1.USB���Ƿ���ȷ���ӡ�
%.%      ��2.���������Ƿ���ȷ��װ��ʶ��
%.%      ��3.�ֻ��Ƿ����fastbootģʽ��
%.%
%.%             ���������ù��ߣ�
%.%%..%
timeout /t 2 /nobreak >NUL
fastboot.exe wait-for-device >NUL 2>NUL

CLS
%.%
%.%%�汾%
%.%%..%
%.%
%.%
%.%             ��ʼROOT��
%.%
%.%
%.%%..%
%.%
%.%    �������� OKAY ��ˢ��ɹ��������ʧ�ܣ�
%.%
%.%    ������ʱ��ͣ���ڴ˽��棬�������ù��ߣ�
%.%

::�жϲ�ˢд����(ROOT�豸)
if exist boot.img fastboot.exe flash boot boot.img || %����% ROOTʧ��
if exist boot.img fastboot.exe flash boot boot.img || %����% ROOTʧ��
timeout /t 4 /nobreak >NUL
%����% FLASH_OVER


:ROOTʧ��
%.%
%.% ��������������Ѹ�ٽ�ͼ����ղŵ�ˢ�������ʾ��Ϣ
timeout /t 20 /nobreak >NUL
CLS
%.%
%.%%�汾%
%.%%..%
%.%
%.%                   ˢ��ʧ�ܣ�
%.%
%.%           1.����ֻ��ͺ��Ƿ���ƥ��
%.%           2.ȷ��Fastbootģʽ�Ƿ�����
%.%           3.���Ը��������� �����������Ӷ˿�
%.%          �ٲ��о������Ұ� ����:2488704020
%.%
%.%            ����������˳�����
%.%%..%
%.%
timeout /t 1 /nobreak >NUL
pause >NUL
EXIT


:ROOT���
CLS
%.%
%.%%�汾%
%.%%..%
%.%
%.%             ˢKernelSU ROOT�����
%.%             ���������ֻ�����
%.%
%.%             �������ˢ��KernelSU����ɺ�
%.%             ���Ե��˹������KSU��װ��      
%.%             �ļ����ƶ����ֻ����а�װ��
%.%             Ҳ����ǰ���ᰲ����KernelSU
%.%             �������ذ�װ��
%.%             
%.%
%.%           ����������رմ˴��ڣ�
%.%%..%
%.%
fastboot.exe reboot
pause >NUL

EXIT