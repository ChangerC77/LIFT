# LIFT

## 目录
1. [module introduction](#module-introduction)
2. [开箱](#unboxing)
3. [accessory](#accessory)
4. [Charge](#charge)
5. [Packing the battery](#packing-the-battery)
6. [Download LIFT code](#download)
7. [build ARX_VR_SDK](#build-arx-vr-sdk)
8. [build ARX-X5](#build)
9. [teleoperation](#teleoperation)
10. [VR](#vr)

## Quick Guide
1. [teleoperation](#teleoperation)


<a id="module-introduction"></a>
## 1. module introduction
| 模块 | 说明 | Github |
| --- | --- | --- |
| `ARX_CAN` | CAN communication setting | - |
| `ARX_VR_SDK` | VR setting | - |
| `ARX_X5` | ARX X5 control | [ARX_X5](https://github.com/ChangerC77/ARX_X5/tree/main) |
| `LIFT` | LIFT teleoperation | [LIFT](https://github.com/ChangerC77/LIFT) |
| `ROS2_LIFT_Play` | data collection, model training and deployment | [ROS2_LIFT_Play](https://github.com/ChangerC77/ROS2_LIFT_Play) |

<a id="unboxing"></a>
## 2. 开箱
<p align="center">
  <img src="img/1.png" alt="开箱图 1" width="32%">
  <img src="img/2.png" alt="开箱图 2" width="32%">
  <img src="img/3.png" alt="开箱图 3" width="32%">
</p>
<p align="center">
  <img src="img/4.png" alt="开箱图 4" width="32%">
  <img src="img/5.png" alt="开箱图 5" width="32%">
</p>

<a id="accessory"></a>
## 3. accessory
### 3.1 camera
totally 3 cameras: 2 twist camera, and 1 head camera
<img src='img/6.png'>

### 3.2 battery
<p align="center">
  <img src="img/7.png" alt="battery 图 1" width="32%">
  <img src="img/8.png" alt="battery 图 2" width="32%">
  <img src="img/9.png" alt="battery 图 3" width="32%">
</p>

### 3.3 power adapter
<p align="center">
  <img src="img/10.png" alt="power adapter 图 1" width="48%">
  <img src="img/11.png" alt="power adapter 图 2" width="48%">
</p>
<p align="center">
  <img src="img/12.png" alt="power adapter 图 3" width="48%">
  <img src="img/13.png" alt="power adapter 图 4" width="48%">
</p>

<a id="charge"></a>
## 4. Charge
1. 充电器依次给各个电池充电，而不是同时充电
2. 实测充电器给仅剩1格的2个电池充电，时长为`1h30min`左右

<a id="packing-the-battery"></a>
## 5. Packing the battery
<img src='img/14.png'>

<a id="download"></a>
## 6. Download
### 6.1 LIFT
```
mkdir -p ~/ARX && cd ARX
git clone -b cxy https://github.com/ChangerC77/LIFT.git
```
<details>
<summary>output</summary>

```
正克隆到 'LIFT'...
remote: Enumerating objects: 889, done.
remote: Counting objects: 100% (23/23), done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 889 (delta 16), reused 14 (delta 14), pack-reused 866 (from 1)
接收对象中: 100% (889/889), 69.24 MiB | 3.23 MiB/s, 完成.
处理 delta 中: 100% (189/189), 完成.
```
</details>

### 6.2 Submodules
```
cd ~/ARX/LIFT
git submodule update --init --recursive
```

<details>
<summary>output</summary>

```text
子模组 'ARX_X5'（https://github.com/ChangerC77/ARX_X5.git）已对路径 'ARX_X5' 注册
子模组 'ARX_all_in_one_readme'（https://github.com/ChangerC77/ARX_all_in_one_readme.git）已对路径 'ARX_all_in_one_readme' 注册
正克隆到 '/home/leishen/cxy/LIFT/ARX_X5'...
正克隆到 '/home/leishen/cxy/LIFT/ARX_all_in_one_readme'...
子模组路径 'ARX_X5'：检出 'a4e4ead3c40f9fabc625103e1071f77b44b2c228'
子模组路径 'ARX_all_in_one_readme'：检出 '75d410ce153ffa4dc893d5f24a74865f1456662f'
```
</details>

<a id="build-arx-vr-sdk"></a>
## 7. build ARX_VR_SDK
```
cd ~/ARX/LIFT/ARX_VR_SDK/ROS2
colcon build
```
<details>
<summary>output</summary>

```
Starting >>> arm_control
Finished <<< arm_control [2.04s]                    
Starting >>> serial_port
[3.3s] [1/2 complete] [serial_port:build 50% - 1.2s]
Finished <<< serial_port [3.71s]                     

Summary: 2 packages finished [5.89s]
```
</details>

<a id="build"></a>
## 8. build
### 8.1 01make
``` 
cd ~/ARX/LIFT/00-sh/LIFT2-X5/ROS2
./01make.sh
```
it will occur 3 tabs in one terminal

<details>
<summary> tab 1</summary>

```
选项“-x”已弃用并可能在 gnome-terminal 的后续版本中移除。
# 使用“-- ”以结束选项并将要执行的命令行追加至其后。
# 选项“-x”已弃用并可能在 gnome-terminal 的后续版本中移除。
# 使用“-- ”以结束选项并将要执行的命令行追加至其后。
# 选项“-x”已弃用并可能在 gnome-terminal 的后续版本中移除。
# 使用“-- ”以结束选项并将要执行的命令行追加至其后。
```
</details>

<details>
<summary> tab 2</summary>

```
安装依赖
正在读取软件包列表... 完成
正在分析软件包的依赖关系树... 完成
正在读取状态信息... 完成                 
ros-humble-serial-driver 已经是最新版 (1.2.0-2jammy.20250719.024937)。
下列软件包是自动安装的并且现在不需要了：
  linux-headers-6.8.0-40-generic linux-hwe-6.8-headers-6.8.0-40
  linux-hwe-6.8-tools-6.8.0-40 linux-image-6.8.0-40-generic
  linux-modules-6.8.0-40-generic linux-modules-extra-6.8.0-40-generic
  linux-tools-6.8.0-40-generic
使用'sudo apt autoremove'来卸载它(它们)。
升级了 0 个软件包，新安装了 0 个软件包，要卸载 0 个软件包，有 7 个软件包未被升级。
正在读取软件包列表... 完成
正在分析软件包的依赖关系树... 完成
正在读取状态信息... 完成                 
ros-humble-asio-cmake-module 已经是最新版 (1.2.0-2jammy.20250718.233550)。
下列软件包是自动安装的并且现在不需要了：
  linux-headers-6.8.0-40-generic linux-hwe-6.8-headers-6.8.0-40
  linux-hwe-6.8-tools-6.8.0-40 linux-image-6.8.0-40-generic
  linux-modules-6.8.0-40-generic linux-modules-extra-6.8.0-40-generic
  linux-tools-6.8.0-40-generic
使用'sudo apt autoremove'来卸载它(它们)。
升级了 0 个软件包，新安装了 0 个软件包，要卸载 0 个软件包，有 7 个软件包未被升级。
crw-rw-rw- 1 root dialout 166, 0  9月  2 21:34 /dev/ttyACM0
crw-rw-rw- 1 root dialout 166, 1  9月  2 21:34 /dev/ttyACM1
crw-rw-rw- 1 root dialout 166, 2  9月  2 21:34 /dev/ttyACM2
crw-rw-rw- 1 root dialout 166, 3  9月  2 21:34 /dev/ttyACM3
udev 规则文件已存在: /etc/udev/rules.d/99-ttyACM.rules
重新加载 udev 规则...
确保当前用户已被添加到 dialout 组...
操作完成。请重新登录，或运行 'newgrp dialout' 使更改生效。
您可以通过以下命令验证组成员信息：
groups arx
```
</details>

<details>
<summary> tab 3</summary>

```
Starting >>> arm_control
Starting >>> arx5_arm_msg
Finished <<< arx5_arm_msg [3.46s]                                                                
--- stderr: arm_control                             
CMake Warning:
  Manually-specified variables were not used by the project:

    CATKIN_INSTALL_INTO_PREFIX_ROOT


---
Finished <<< arm_control [3.76s]
Starting >>> arx_lift_controller
--- stderr: arx_lift_controller                               
/home/arx/ARX/LIFT/body/ROS2/src/ARX_LIFT_ros2/arx_lift_controller/src/lift_controller.cpp: In function ‘void signalHandler(int)’:
/home/arx/ARX/LIFT/body/ROS2/src/ARX_LIFT_ros2/arx_lift_controller/src/lift_controller.cpp:14:24: warning: unused parameter ‘signum’ [-Wunused-parameter]
   14 | void signalHandler(int signum) {
      |                    ~~~~^~~~~~
---
Finished <<< arx_lift_controller [7.85s]

Summary: 3 packages finished [11.8s]
  2 packages had stderr output: arm_control arx_lift_controller
  ```
new tab
```
Starting >>> arm_control
Starting >>> arx5_arm_msg
Finished <<< arx5_arm_msg [3.63s]                                                               
--- stderr: arm_control
CMake Warning:
  Manually-specified variables were not used by the project:

    CATKIN_INSTALL_INTO_PREFIX_ROOT


---
Finished <<< arm_control [3.68s]
Starting >>> arx_x5_controller
Finished <<< arx_x5_controller [12.8s]                       

Summary: 3 packages finished [16.7s]
  1 package had stderr output: arm_control
```
new tab
```
安装依赖
正在读取软件包列表... 完成
正在分析软件包的依赖关系树... 完成
正在读取状态信息... 完成                 
ros-humble-serial-driver 已经是最新版 (1.2.0-2jammy.20250719.024937)。
下列软件包是自动安装的并且现在不需要了：
  linux-headers-6.8.0-40-generic linux-hwe-6.8-headers-6.8.0-40 linux-hwe-6.8-tools-6.8.0-40 linux-image-6.8.0-40-generic linux-modules-6.8.0-40-generic
  linux-modules-extra-6.8.0-40-generic linux-tools-6.8.0-40-generic
使用'sudo apt autoremove'来卸载它(它们)。
升级了 0 个软件包，新安装了 0 个软件包，要卸载 0 个软件包，有 8 个软件包未被升级。
正在读取软件包列表... 完成
正在分析软件包的依赖关系树... 完成
正在读取状态信息... 完成                 
ros-humble-asio-cmake-module 已经是最新版 (1.2.0-2jammy.20250718.233550)。
下列软件包是自动安装的并且现在不需要了：
  linux-headers-6.8.0-40-generic linux-hwe-6.8-headers-6.8.0-40 linux-hwe-6.8-tools-6.8.0-40 linux-image-6.8.0-40-generic linux-modules-6.8.0-40-generic
  linux-modules-extra-6.8.0-40-generic linux-tools-6.8.0-40-generic
使用'sudo apt autoremove'来卸载它(它们)。
升级了 0 个软件包，新安装了 0 个软件包，要卸载 0 个软件包，有 8 个软件包未被升级。
crw-rw-rw- 1 root dialout 166, 0  9月  2 21:44 /dev/ttyACM0
crw-rw-rw- 1 root dialout 166, 1  9月  2 21:44 /dev/ttyACM1
crw-rw-rw- 1 root dialout 166, 2  9月  2 21:44 /dev/ttyACM2
crw-rw-rw- 1 root dialout 166, 3  9月  2 21:44 /dev/ttyACM3
udev 规则文件已存在: /etc/udev/rules.d/99-ttyACM.rules
重新加载 udev 规则...
确保当前用户已被添加到 dialout 组...
操作完成。请重新登录，或运行 'newgrp dialout' 使更改生效。
您可以通过以下命令验证组成员信息：
groups arx
```
</details>

### 8.2 02make
```
cd ~/ARX/LIFT/00-sh/LIFT2-X5/ROS2
./02make.sh
```
<details>
<summary>output</summary>

```
Starting >>> arm_control
Finished <<< arm_control [2.14s]                    
Starting >>> serial_port
Finished <<< serial_port [3.62s]                     

Summary: 2 packages finished [5.90s]
```
</details>

<a id="teleoperation"></a>
## 9. teleoperation
before start this, connect VR with `ARX PC`
<p align="center">
  <img src="img/15.png" alt="teleoperation 图 1" width="48%">
  <img src="img/37.png" alt="teleoperation 图 2" width="48%">
</p>


```
cd ~/LIFT/00-sh/LIFT2-X5/ROS2
./LIFT2.sh
```
it will start many tabs in one terminal
tab 1
```
CAN 接口 can1 正常工作
```
tab 2
```
CAN 接口 can3 正常工作
```
tab 3
```
CAN 接口 can5 正常工作
```

<details>
<summary>tab 4</summary>
```
[INFO] [launch]: All log files can be found below /home/arx/.ros/log/2025-09-02-22-46-10-566536-arx-425695
[INFO] [launch]: Default logging verbosity is set to INFO
[INFO] [lift_controller-1]: process started with pid [426552]
[lift_controller-1] SocketCAN adapter created.
[lift_controller-1] Created CAN socket with descriptor 18.
[lift_controller-1] Found: can5 has interface index 10.
[lift_controller-1] Successfully bound socket to interface 10.
[lift_controller-1] ReciveThread running 
[lift_controller-1] waist motor calibrated.
[lift_controller-1] lift motor calibrated.
```
</details>

tab 5
```
[X5Controller-1] ARX方舟无限
[X5Controller-2] ARX方舟无限
```
<details>
<summary>tab 6</summary>

```
[INFO] [1756824373.691815070] [IoContext::IoContext]: Thread(s) Created: 22
DEV/tty NAME: /dev/serial/by-id/usb-Openlight_Labs_CANable2_b158aa7_github.com_normaldotcom_canable2.git_206E35974831-if00 -> ../../ttyACM3
DEV/tty NAME: /dev/serial/by-id/usb-Openlight_Labs_CANable2_b158aa7_github.com_normaldotcom_canable2.git_206D35844831-if00 -> ../../ttyACM2
DEV/tty NAME: /dev/serial/by-id/usb-Openlight_Labs_CANable2_b158aa7_github.com_normaldotcom_canable2.git_206F35AD4831-if00 -> ../../ttyACM1
DEV/tty NAME: /dev/serial/by-id/usb-1a86_USB_Single_Serial_5909045866-if00 -> ../../ttyACM0
Matching device: /dev/ttyACM0
device choose: /dev/ttyACM0
[INFO] [1756824373.693141165] [serial_port_node]: /dev/ttyACM0 is opened.
```
</details>

<details>
<summary>tab 7</summary>
```
---
x: 0.0
y: 0.0
z: 0.0
roll: 0.0
pitch: 0.0
yaw: 0.0
gripper: 5.0
quater_x: 0.0
quater_y: 0.0
quater_z: 0.0
quater_w: 0.0
chx: 0.0
chy: 0.0
chz: 0.0
vel_l: 0.0
vel_r: 0.0
height: 0.0
head_pit: -0.34199
head_yaw: 0.20043
temp_float_data:
- 0.0
- 0.0
- 0.0
- 0.0
- 0.0
- 0.0
temp_int_data:
- 0
- 0
- 0
- 0
- 0
- 0
mode1: 1
mode2: 0
time_count: 0
---
```
</details>

<a id="vr"></a>
## 10. VR
### 10.1 intro button
<img src="img/34.png" alt="VR 按键示意图">
红色箭头：透视按键
蓝色箭头：音量调节按键

<p align="center">
  <img src="img/35.png" alt="VR 手柄按键图 1" width="48%">
  <img src="img/36.png" alt="VR 手柄按键图 2" width="48%">
</p>

| 类别 | 按键 / 控件 | 功能 | 备注 |
| --- | --- | --- | --- |
| 机械臂 | `A` / `X` | 双臂机械臂复位 | `X`对应左臂，`A`对应右臂 |
| 机械臂 | `前方按键` | 按住后机械臂跟随手柄移动 | - |
| 夹爪 | `侧边按键` | 控制夹爪闭合 | - |
| 视野 / 系统 | `Meta` | 后台键；长按 3s 重置视野 | - |
| 使用前提 | `急停` | 使用底盘和升降平台前需要打开 | 否则无法使用 |
| 底盘 | `B` | 底盘解锁 | - |
| 底盘 | `Y` | 底盘保护 | 开启后遥杆控制失效 |
| 底盘 | `右遥杆` | 控制底盘前向移动 | - |
| 底盘 / 升降 | `左遥杆` | 控制底盘旋转和身体升降 | - |

### 10.2 reset the view
如果视野中没有菜单栏，可以长按Meta键重置视野
<img src='img/27.png'>


### 10.3 start APP
带上VR，用右手柄的A键点击打开右下角黑色图标的APP
<p align="center">
  <img src="img/17.png" alt="启动 APP 步骤图 1" width="32%">
  <img src="img/18.png" alt="启动 APP 步骤图 2" width="32%">
  <img src="img/19.png" alt="启动 APP 步骤图 3" width="32%">
</p>

### 10.4 unlock

<p align="center">
  <img src="img/20.png" alt="解锁步骤图 1" width="48%">
  <img src="img/29.png" alt="解锁步骤图 2" width="48%">
</p>

此时VR会一直发出锁定的声音, 而后双手按住手柄的`AB+ XY`解锁

### 10.5 further unlock
而后同时间`下压`左右手柄遥杆键（直至语音提示控制器上线）机械臂完整解锁
<p align="center">
  <img src="img/30.png" alt="进一步解锁步骤图 1" width="48%">
  <img src="img/21.png" alt="进一步解锁步骤图 2" width="48%">
</p>

### 10.6 复位
而后按`X`和`A`让两个机械臂复位，`X`对应左臂，`A`对应右臂

<p align="center">
  <img src="img/22.png" alt="复位步骤图 1" width="48%">
  <img src="img/31.png" alt="复位步骤图 2" width="48%">
</p>

### 10.7 teleoperation using VR
按住扳机开始进行遥操作
<p align="center">
  <img src="img/23.png" alt="VR 遥操作步骤图 1" width="32%">
  <img src="img/24.png" alt="VR 遥操作步骤图 2" width="32%">
  <img src="img/33.png" alt="VR 遥操作步骤图 3" width="32%">
</p>

### 10.8 Gripper
按两侧按钮控制夹爪开合
<img src='img/25.png'>

### 10.9 chassis control
1. 控制底盘之前，需要按下`B`键解锁底盘
2. `右手柄遥杆`控制底盘的全向移动
3. `左手柄遥杆`控制底盘的旋转和身体的升降
4. 按下`Y`键底盘进入保护，此时遥杆失效

### 10.10 VR charge
<img src='img/38.png'>