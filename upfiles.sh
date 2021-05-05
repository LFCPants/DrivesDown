#!/bin/bash
wget https://bangumi.moe/download/torrent/593784dc8a45cb3e725919aa/[VCB-Studio]%20Uchuu%20Patrol%20Luluco%20_%20%E5%AE%87%E5%AE%99%E5%B7%A1%E8%AD%A6%E9%9C%B2%E9%9C%B2%E5%AD%90%20_%20%E5%AE%87%E5%AE%99%E3%83%91%E3%83%88%E3%83%AD%E3%83%BC%E3%83%AB%E3%83%AB%E3%83%AB%E5%AD%90%2010-bit%201080p%20HEVC%20BDRip%20[Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=10; i<=700; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done


