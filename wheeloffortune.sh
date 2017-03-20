#!/bin/bash

today=$(date +%Y-%m-%d)
echo $today

ffmpeg -i http://stream-live-edge-a01.crossroadscloud.com:8081/yestv-ont-multibit/yestv-ont-multibit/playlist.m3u8 -vcodec copy -strict -2 -t 1800 "/mnt/television/complete/tv/Wheel Of Fortune - $today.mp4"
