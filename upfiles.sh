#!/bin/bash
wget https://bangumi.moe/download/torrent/5923b8d01a0b230822448b10/[VCB-Studio]%20Bakuon!!%20_%20%E7%88%86%E9%9F%B3%E5%B0%91%E5%A5%B3!!%20_%20%E3%81%B0%E3%81%8F%E3%81%8A%E3%82%93!!%20TV+OADs%2010-bit%201080p%20HEVC%20BDRip%20[Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=10; i<=910; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done
#q

