rpm-ostree cancel

rpm-ostree upgrade

rpm-ostree install gnome-tweaks htop neofetch wine openssl

flatpak install flathub com.valvesoftware.Steam com.discordapp.Discord

wget https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer -P  ~/Downloads/
chmod +x ~/Downloads/gnome-shell-extension-installer
~/Downloads/gnome-shell-extension-installer --yes --restart-shell 19 517 4099 1319 2890 

mkdir ~/.themes
mkdir ~/.icons

wget https://github.com/EliverLara/Nordic/releases/download/v2.2.0/Nordic-darker-v40.tar.xz -P ~/Downloads/
wget https://github.com/zayronxio/Zafiro-icons/releases/download/1.3/Zafiro-Icons-Dark.tar.xz -P ~/Downloads/

tar -xf ~/Downloads/Nordic-darker-v40.tar.xz -C ~/.themes
tar -xf ~/Downloads/Zafiro-Icons-Dark.tar.xz -C ~/.icons

git clone https://github.com/EliverLara/Nordic ~/.icons/Nordic
mv ~/.icons/Nordic/kde/cursors/Nordic-cursors ~/.icons/

wget https://github.com/dxnst/nord-wallpapers/raw/master/nordic-obsession.png -P ~/Downloads

gsettings set org.gnome.desktop.interface gtk-theme "Nordic-darker-v40"
gsettings set org.gnome.desktop.wm.preferences theme "Nordic-darker-v40"
gsettings set org.gnome.desktop.interface icon-theme "Zafiro-Icons-Dark"
gsettings set org.gnome.desktop.interface cursor-theme "Nordic-cursors"
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:appmenu'
gsettings set org.gnome.desktop.background picture-uri-dark ~/Downloads/nordic-obsession.png

git clone https://github.com/arcticicestudio/nord-gnome-terminal.git ~/Downloads/nord-gnome-terminal
~/Downloads/nord-gnome-terminal/src/nord.sh

systemctl reboot
