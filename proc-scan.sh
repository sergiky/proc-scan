#!/usr/bin/env bash

proc=
new_proc=

while true; do
	new_proc=$(ps -eo pid,ruser,command | tail -n 6 | grep -vE "tail|grep|ps|bash")
	if [[ "$new_proc" == "$proc" ]]; then
		:
	else
		echo "$new_proc"
		proc="$new_proc"
	fi
done
