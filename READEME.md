# new LIFT
## 1. Download
```
mkdir -p ~/ARX && cd ARX
git clone -b cxy https://github.com/ChangerC77/LIFT.git
```
## 2. build ARX_VR_SDK
```
cd ~/ARX/LIFT/ARX_VR_SDK/ROS2
colcon build
```
output
```
Starting >>> arm_control
Finished <<< arm_control [2.04s]                    
Starting >>> serial_port
[3.3s] [1/2 complete] [serial_port:build 50% - 1.2s]
Finished <<< serial_port [3.71s]                     

Summary: 2 packages finished [5.89s]
```
## 3. build
### 3.1 01make
``` 
cd ~/ARX/LIFT/00-sh/LIFT2-X5/ROS2
./01make.sh
```
output
```
选项“-x”已弃用并可能在 gnome-terminal 的后续版本中移除。
# 使用“-- ”以结束选项并将要执行的命令行追加至其后。
# 选项“-x”已弃用并可能在 gnome-terminal 的后续版本中移除。
# 使用“-- ”以结束选项并将要执行的命令行追加至其后。
# 选项“-x”已弃用并可能在 gnome-terminal 的后续版本中移除。
# 使用“-- ”以结束选项并将要执行的命令行追加至其后。
```
new tab
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
new tab
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
### 3.2 02make
```
cd ~/ARX/LIFT/00-sh/LIFT2-X5/ROS2
./02make.sh
```
output
```
Starting >>> arm_control
Finished <<< arm_control [2.14s]                    
Starting >>> serial_port
Finished <<< serial_port [3.62s]                     

Summary: 2 packages finished [5.90s]
```
## 4. teleoperation
```
cd ~/LIFT/00-sh/LIFT2-X5/ROS2
./LIFT2.sh
```
会在一个terminal里开多个tab
new tab
```
CAN 接口 can1 正常工作
```
new tab
```
CAN 接口 can3 正常工作
```
new tab
```
CAN 接口 can5 正常工作
```
new tab
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
new tab
```
[X5Controller-1] ARX方舟无限
[X5Controller-2] ARX方舟无限
```
new tab
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
new tab
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