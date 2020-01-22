cat config >> ~/.config/i3/config
mkdir -p ~/.config/rofi/
ln -s $(pwd)/rofi ~/.config/rofi/config
sed -i "s/dmenu_rum/rofi -show combi -config .config/rofi/config/g" ~/.config/i3/config
xdg-desktop-menu install aul12-reboot.desktop
xdg-desktop-menu install aul12-poweroff.desktop
