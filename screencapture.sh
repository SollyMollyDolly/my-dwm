#! /bin/sh

ffmpeg -video_size 1366x768 -framerate 25 -f x11grab -i :0.0 -vframes 1 /tmp/screenshot.png
xclip -selection clipboard -t image/png -i < /tmp/screenshot.png
rm /tmp/screenshot.png
