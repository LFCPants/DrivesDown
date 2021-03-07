#!/bin/bash
wget https://bangumi.moe/download/torrent/601bb41e32f14c00073f1683/[VCB-Studio&philosophy-raws]%20Owari%20no%20Seraph%20_%20%E7%BB%88%E7%BB%93%E7%9A%84%E7%82%BD%E5%A4%A9%E4%BD%BF%20_%20%E7%B5%82%E3%82%8F%E3%82%8A%E3%81%AE%E3%82%BB%E3%83%A9%E3%83%95%2010-bit%201080p%20HEVC%20BDRip%20[Reseed%20Fin].torrent
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=20; i<=1064; i=i+20, j=j+20))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
#echo "$i-$j 上传完成"
#done
#
