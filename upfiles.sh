#!/bin/bash
wget https://bangumi.moe/download/torrent/591d60511a0b230822448539/[VCB-Studio]%20Planetarian_%20Hoshi%20no%20Hito%20_%20%E6%98%9F%E4%B9%8B%E6%A2%A6%EF%BD%9E%E6%98%9F%E4%B9%8B%E4%BA%BA%EF%BD%9E%20_%20planetarian%EF%BD%9E%E6%98%9F%E3%81%AE%E4%BA%BA%EF%BD%9E%2010-bit%201080p%20HEVC%20BDRip%20[Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=10; i<=910; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done
#q

