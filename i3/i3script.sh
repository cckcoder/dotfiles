#!/bin/bash

i3status --config ~/.config/i3/i3status.conf | while :
do
	read line
	LG=$(xset -q | grep LED | awk '{ print $10 }')
	if [ $LG == "00000000" ]
	then
		dat="[{ \"full_text\": \"LANG: US\", \"color\":\"#009E00\" },"
	else
		dat="[{ \"full_text\": \"LANG: TH\", \"color\":\"#C60101\" },"
	fi
	echo "${line/[/$dat}" || exit 1
done
