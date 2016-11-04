# **NodeMCU lua级别 快速开发指南** #

## 1 更新NodeMCU固件

### 1）安装更新固件工具esptool
 - [源码](https://github.com/themadinventor/esptool)
 - pip快速安装: 
 
```
pip install
```
### 2）下载固件
```
wget https://github.com/nodemcu/nodemcu-firmware/releases/download/0.9.6-dev_20150704/nodemcu_float_0.9.6-dev_20150704.bin
```

### 3）擦除固件
```
sudo esptool.py --port /dev/tty.SLAB_USBtoUART erase_flash
```
### 4）下载固件
```
sudo esptool.py --port /dev/tty.SLAB_USBtoUART write_flash -fm dio -fs 32m -ff 40m 0x00000 ~/Desktop/nodemcu_float_0.9.6-dev_20150704.bin
```
## 2 下载串口驱动

针对串口芯片CP2102

[官网地址](http://www.silabs.com/products/mcu/Pages/USBtoUARTBridgeVCPDrivers.aspx#mac)

安装之后验证是否安装成功
```
cd /dev
ls tty.*
```
如果看到tty.SLAB_USBtoUART, 说明安装成功

## 3 下载lua脚本下载工具
[源码](https://github.com/4refr0nt/luatool)

先安装pyserial 模块：
```
pip install pyserial
```
下载脚本:
```
git clone https://github.com/4refr0nt/luatool.git 
cd luatool/luatool 

sudo ./luatool.py -p /dev/tty.SLAB_USBtoUART -b 9600 -f init.lua -r 

```
### 4 查看nodeMCU的输出信息
```
brew install minicom
minicom -s
```


