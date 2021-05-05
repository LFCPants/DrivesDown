#!/bin/bash
wget https://bangumi.moe/download/torrent/592fab836cf8d8694c4efd8c/[VCB-Studio]%20Gochuumon%20wa%20Usagi%20Desuka__%20Rabbit%20House%20Tea%20Party%202016%20_%20%E8%AF%B7%E9%97%AE%E6%82%A8%E4%BB%8A%E5%A4%A9%E8%A6%81%E6%9D%A5%E7%82%B9%E5%85%94%E5%AD%90%E5%90%97%EF%BC%9F%EF%BC%9F%20_%20%E3%81%94%E6%B3%A8%E6%96%87%E3%81%AF%E3%81%86%E3%81%95%E3%81%8E%E3%81%A7%E3%81%99%E3%81%8B__%2010bit%201080p%20BDRip.torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=10; i<=700; i=i+10, j=j+10))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done


