#!/bin/bash
wget https://bangumi.moe/download/torrent/591c3a2b1a0b23082244847e/[VCB-Studio]%20Tokyo%20Ghoul%20_%20%E4%B8%9C%E4%BA%AC%E5%96%B0%E7%A7%8D%20_%20%E3%83%88%E3%83%BC%E3%82%AD%E3%83%A7%E3%83%BC%E3%82%B0%E3%83%BC%E3%83%AB%20S1+S2+OVA%2010-bit%201080p%20AVC_HEVC%20BDRip%20[Reseed%20Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=10; i<=910; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done


