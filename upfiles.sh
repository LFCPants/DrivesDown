#!/bin/bash
wget https://bangumi.moe/download/torrent/593784d48a45cb3e725919a8/[VCB-Studio]%20High%20School%20Fleet%20_%20%E9%AB%98%E6%A0%A1%E8%88%B0%E9%98%9F%20_%20%E3%83%8F%E3%82%A4%E3%82%B9%E3%82%AF%E3%83%BC%E3%83%AB%E3%83%BB%E3%83%95%E3%83%AA%E3%83%BC%E3%83%88%20OVA%2010-bit%201080p%20HEVC%20BDRip%20[Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=10; i<=700; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done


