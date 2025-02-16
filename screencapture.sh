#! /bin/sh

FILE=$(date +"Screenshot_%Y%m%d_%H%M%S.png")
ffmpeg -video_size 1366x768 -framerate 1 -f x11grab -i :0.0 -vframes 1 /tmp/$FILE
xclip -selection clipboard -t image/png -i < /tmp/$FILE
rm /tmp/$FILE
