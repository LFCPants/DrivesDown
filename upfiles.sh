#!/bin/bash
wget https://bangumi.moe/download/torrent/592eab036cf8d8694c4efcbc/[VCB-Studio]%20Saki%20_%20%E5%A4%A9%E6%89%8D%E9%BA%BB%E5%B0%86%E5%B0%91%E5%A5%B3%20_%20%E5%92%B2%20-Saki-%2010bit%201080p%20BDRip%20[Reseed%20Fin].torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=10; i<=910; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done


