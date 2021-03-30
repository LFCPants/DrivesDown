#!/bin/bash
wget https://bangumi.moe/download/torrent/5bb47459de4560f455f61bb1/[VCB-Studio]%20Batman_%20The%20Killing%20Joke%20_%20%E8%9D%99%E8%9D%A0%E4%BE%A0%EF%BC%9A%E8%87%B4%E5%91%BD%E7%8E%A9%E7%AC%91%2010-bit%201080p%20HEVC%20BDRip%20[Movie%20Fin].torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=15; i<=1064; i=i+15, j=j+15))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_0 的文件"/番/
#echo "$i-$j 上传完成"
#done


