mkdir -p ~/.cron
ln -s wallpaper.sh ~/.cron/wallpaper.sh
ln -s batterStatus.sh ~/.cron/batteryStatus.sh
crontab -l > current_cron
cat cron_add >> current_cron
crontab current_cron
rm current_cron
