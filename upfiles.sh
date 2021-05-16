#!/bin/bash
wget https://bangumi.moe/download/torrent/591d62cc1a0b23082244853d/[VCB-Studio]%20Xam%60d_%20Lost%20Memories%20_%20%E4%BA%A1%E5%BF%B5%E4%B9%8B%E6%89%8E%E5%A7%86%E5%BE%B7%20_%20%E4%BA%A1%E5%BF%B5%E3%81%AE%E3%82%B6%E3%83%A0%E3%83%89%2010-bit%20720p%20HEVC%20BDRip%20[Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=10; i<=910; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done
#q

