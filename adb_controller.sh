#!/bin/bash

adb devices | grep -v List | while read line
do
	if [ "$line" == "" ]; then
		continue
	fi
	device_id=$( echo $line | cut -d' ' -f 1 )
	echo $device_id
	#"adb -s ${device_id} install APK"
	adb -s ${device_id} reboot
done
