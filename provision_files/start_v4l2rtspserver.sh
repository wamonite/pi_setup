#!/bin/bash -eu

modprobe bcm2835-v4l2
v4l2-ctl -d /dev/video0 -c horizontal_flip=1,vertical_flip=1

if test -t 1; then
    exec 1>/dev/null
fi

if test -t 2; then
    exec 2>/dev/null
fi

sudo -u pi bash -c 'exec /home/pi/src/v4l2rtspserver/v4l2rtspserver -W 1920 -H 1080 -F 10 /dev/video0' &
