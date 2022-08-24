#!/bin/sh

# If still logged in, we exit
if last | grep "still logged in";then
  exit 0
fi

LAST_ACCESS="$(stat -c'%X' /var/log/wtmp)"
CURRENT_TIME="$(date +%s)"
DIFF="$((CURRENT_TIME-LAST_ACCESS))"

# 10800 meaning 3 hours in seconds
if [ $DIFF -ge 10800 ];then
  sudo shutdown -h now
fi
