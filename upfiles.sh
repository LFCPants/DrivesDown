#!/bin/bash
wget https://bangumi.moe/download/torrent/5b0b795f24dd68674f52891d/[VCB-Studio]%20Vienna%20New%20Year's%20Concert%202018%20_%20%E7%BB%B4%E4%B9%9F%E7%BA%B3%E6%96%B0%E5%B9%B4%E9%9F%B3%E4%B9%90%E4%BC%9A%202018%2010-bit%201080p%20HEVC%20BDRip%20[Fin].torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=15; i<=1064; i=i+15, j=j+15))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_0 的文件"/番/
#echo "$i-$j 上传完成"
#done


