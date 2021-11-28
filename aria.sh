aria2c --enable-rpc --check-certificate=false \
   --max-connection-per-server=10 --rpc-max-request-size=256M \
   --bt-stop-timeout=1800 --min-split-size=10M --follow-torrent=mem --split=10 \
   --daemon=true --allow-overwrite=true --max-overall-download-limit=0 \
   --max-overall-upload-limit=1K --max-concurrent-downloads=15 --continue=true \
   --peer-id-prefix=-qB4390- --user-agent='Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Mobile Safari/537.36' --peer-agent=qBittorrent/4.3.9 \
   --disk-cache=24M --bt-enable-lpd=true --seed-time=0 --max-file-not-found=0 \
   --max-tries=15 --auto-file-renaming=true --lowest-speed-limit=2K --reuse-uri=true --http-accept-gzip=true \
   --content-disposition-default-utf8=true --netrc-path=/usr/src/app/.netrc --load-cookies=/usr/src/app/cookies_aria.txt
