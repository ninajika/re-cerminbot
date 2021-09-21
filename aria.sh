aria2c --enable-rpc --check-certificate=false \
   --max-connection-per-server=10 --rpc-max-request-size=512M \
   --bt-stop-timeout=0 --min-split-size=10M --follow-torrent=mem --split=10 \
   --daemon=true --allow-overwrite=true --max-overall-download-limit=0 \
   --max-overall-upload-limit=1K --max-concurrent-downloads=15 --continue=true \
   --peer-id-prefix=-qB4380- --user-agent='Mozilla/5.0 (iPad; CPU OS 12_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1' --peer-agent=qBittorrent/4.3.8 \
   --disk-cache=32M --bt-enable-lpd=true --seed-time=0 --max-file-not-found=0 \
   --max-tries=15 --auto-file-renaming=true --reuse-uri=true --http-accept-gzip=true \
   --content-disposition-default-utf8=true --netrc-path=/usr/src/app/.netrc
