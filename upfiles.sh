#!/bin/bash
wget https://bangumi.moe/download/torrent/5927fc3f1a0b230822448ee2/[VCB-Studio]%20Regalia%20The%20Three%20Sacred%20Stars%20_%20%E9%9B%B7%E5%8A%A0%E5%88%A9%E4%BA%9A%20%E4%B8%89%E5%9C%A3%E6%98%9F%20_%20%E3%83%AC%E3%82%AC%E3%83%AA%E3%82%A2%2010-bit%201080p%20HEVC%20BDRip%20[Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=31, j=40; i<=910; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done
#q

