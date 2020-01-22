mkdir -p ~/.cron
ln -s $(pwd)/wallpaper.sh ~/.cron/wallpaper.sh
ln -s $(pwd)/batteryStatus.sh ~/.cron/batteryStatus.sh
crontab -l > current_cron
cat cron_add >> current_cron
crontab current_cron
rm current_cron
