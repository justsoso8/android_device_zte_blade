#!/system/bin/sh

chmod 755 /system/wifi/*.sh
setprop wifi.interface wlan0
setprop wifi.chip.type BCM_43x9

#added by justsoso8
chmod 6755 /system/bin/su
