#!/bin/bash
wget https://bangumi.moe/download/torrent/5cf0aaad475bb7b273365f36/[SweetSub&VCB-Studio]%20Mirai%20no%20Mirai%20_%20%E6%9C%AA%E6%9D%A5%E7%9A%84%E6%9C%AA%E6%9D%A5%20_%20%E6%9C%AA%E6%9D%A5%E3%81%AE%E3%83%9F%E3%83%A9%E3%82%A4%2010-bit%201080p%20HEVC%20BDRip%20[Fin].torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=15; i<=1064; i=i+15, j=j+15))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_0 的文件"/番/
#echo "$i-$j 上传完成"
#done


