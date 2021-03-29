#!/bin/bash
wget https://bangumi.moe/download/torrent/5c4d6c2660a958730e1238e3/[VCB-Studio]%20Batman_%20The%20Dark%20Knight%20Returns%20_%20%E8%9D%99%E8%9D%A0%E4%BE%A0%EF%BC%9A%E9%BB%91%E6%9A%97%E9%AA%91%E5%A3%AB%E5%BD%92%E6%9D%A5%2010-bit%201080p%20HEVC%20BDRip%20[Movie%20Fin].torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=15; i<=1064; i=i+15, j=j+15))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_0 的文件"/番/
#echo "$i-$j 上传完成"
#done


