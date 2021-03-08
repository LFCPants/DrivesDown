#!/bin/bash
curl 'https://www.skyey2.com/download.php?id=416' \
  -H 'authority: www.skyey2.com' \
  -H 'sec-ch-ua: "Google Chrome";v="89", "Chromium";v="89", ";Not A Brand";v="99"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'upgrade-insecure-requests: 1' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36' \
  -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: navigate' \
  -H 'sec-fetch-user: ?1' \
  -H 'sec-fetch-dest: document' \
  -H 'referer: https://www.skyey2.com/forum.php?mod=viewthread&tid=620&extra=page%3D1' \
  -H 'accept-language: zh-CN,zh;q=0.9,en-US;q=0.8,en;q=0.7,zh-TW;q=0.6' \
  -H 'cookie: __cfduid=d285739263b73067dffa08ab0b578a0ba1615193909; rkvl_2132_saltkey=d3CzMcnn; rkvl_2132_lastvisit=1615190310; rkvl_2132_sid=FNY38Y; rkvl_2132_refreshcollapse4=no; rkvl_2132_seccode=53.bb358e83cafd7e5829; rkvl_2132_ulastactivity=03fa%2BLGXnwfyx7cObPY4lPG%2BC19tTgmvOe3WhiR3PfxQLGd6FDsv; rkvl_2132_auth=ca6eSQ2CPzz8hWyKzpQQdPlWczM8vcDacXDx%2FNEknOSAzSVt06kUoq307%2B3GoHqfdBToHhsGQgdPzncNEVH04VJIuw; rkvl_2132_lastcheck=1; rkvl_2132_nofavfid=1; rkvl_2132_mowii_fold_cookie=1; rkvl_2132_visitedfid=10D8; rkvl_2132_forum_lastvisit=D_10_1615195002; rkvl_2132_visitedtid=620; rkvl_2132_viewid=tid_620; rkvl_2132_smile=7D1; rkvl_2132_st_t=39776%7C1615195025%7Ceec16560d0bd86219cbe15b8f281a47c; rkvl_2132_editormode_e=1; rkvl_2132_st_p=39776%7C1615195339%7C7c4474ac08dffebce310eef6018ce5cf; rkvl_2132_checkpm=1; rkvl_2132_lastact=1615195341%09home.php%09misc; rkvl_2132_sendmail=1' \
  --compressed
#wget https://www.skyey2.com/download.php?id=17118
aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 *.torrent
#for ((i=1, j=20; i<=1064; i=i+20, j=j+20))
#do
#aria2c -x 64 --seed-time=0 --bt-tracker-connect-timeout=10 --bt-tracker-timeout=10 --select-file=$i-$j *.torrent
rclone move -v --transfers 12 --checkers 16 --onedrive-chunk-size 200M --exclude "*.{sh,torrent,aria2}" /home/runner/work/DrivesDown/DrivesDown/download/ onedrive:/待看/
#echo "$i-$j 上传完成"
#done0

