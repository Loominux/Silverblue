# Silverblue

This is my Fedora [Silverblue](https://silverblue.fedoraproject.org) setup.

## Preview

![Preview](https://user-images.githubusercontent.com/115210873/199125395-d0ec6b6f-ad1b-4c50-b8fd-4263df1a1789.png)

I got my Wallpaper (nordic-obsession), from [this repo](https://github.com/dxnst/nord-wallpapers).

## Script

The setup script is split into 2 parts, because Silverblue needs to reboot to have acces to the RPM Fusion packages.

Run the first script 
```sh
curl https://raw.githubusercontent.com/Loominux/Silverblue/main/script-1.sh | sudo sh
```

Run the second script
```sh
curl https://raw.githubusercontent.com/Loominux/Silverblue/main/script-2.sh | sh
```

After the second script is done open the `Extensions` application and enable all extensions, then go to settings of `User Themes` and pick `Nordic-darker-v40`. After that go into the `Settings` application and pick `Dark` in `Appearance -> Styles`.


## Software

### Install [RPM Fusion](https://rpmfusion.org).

```sh
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

Install packages (to be able to install all packages, you need to install RPM Fusion and reboot first)

```sh
rpm-ostree install g++ avahi-compat-libdns_sd-devel cmake discord gnome-tweaks gstreamer1-devel gstreamer1-libav gstreamer1-plugins-base-devel htop libplist-devel make neofetch openssl-devel steam wine
```

### Install Flatpak

```sh
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

Install [Flatpak](https://www.flatpak.org) packages

```sh
flatpak install flathub com.usebottles.bottles
```
## Gnome Shell Extensions

I use [this](https://github.com/brunelli/gnome-shell-extension-installer/) script to install shell extensions

```sh
wget https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer -P  ~/Downloads/
chmod +x ~/Downloads/gnome-shell-extension-installer
~/Downloads/gnome-shell-extension-installer --yes --restart-shell 19 517 4099 1319 2890 
```

## Theme

My Linux theme is using the [Nordic Theme](https://github.com/EliverLara/Nordic) with [Zafiro Icons](https://github.com/zayronxio/Zafiro-icons). I also use a [Terminal color theme](https://github.com/arcticicestudio/nord-gnome-terminal).

```sh
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
```
