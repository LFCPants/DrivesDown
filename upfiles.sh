#!/bin/bash
wget https://link.jscdn.cn/sharepoint/aHR0cHM6Ly9zaHRoZXktbXkuc2hhcmVwb2ludC5jb20vOnU6L2cvcGVyc29uYWwvaHJmX3NodGhleV9vbm1pY3Jvc29mdF9jb20vRWFWVmhDNkEtZnhPZ3Z2LWgtSFIyM2NCYXdtNVljbEtBNkY0QzR6ZG1ydHRtQT9lPVB3U0RNcg.torrent
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
for ((i=1, j=5; i<=1000; i=i+5, j=j+5))
do
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/fczlm/
#rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/"我的文件 - animation_1 的文件"/番/
echo "$i-$j 上传完成"
done

