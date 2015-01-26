#!/bin/bash
log=/root/controllers.log
echo "manette usb detectée" >> $log
sixpair >> $log
if [[ "$?" != "0" ]];then
	bluetoothd --udev &
	sleep 3
	sixpair >> $log
	killall bluetoothd
fi
