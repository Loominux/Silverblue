# Silverblue

This is my Fedora [Silverblue](https://silverblue.fedoraproject.org) setup.

**WIP**

## Software

Install [RPM Fusion](https://rpmfusion.org).

```sh
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```
Install packages

```sh
g++ avahi-compat-libdns_sd-devel cmake discord gnome-tweaks gstreamer1-devel gstreamer1-libav gstreamer1-plugins-base-devel htop libplist-devel make neofetch openssl-devel steam wine
```

Install Flatpak

```sh
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

Install [Flatpak](https://www.flatpak.org) packages

```sh
flatpak install flathub com.usebottles.bottles
```

## Theme

My Linux theme is using the [Nordic Theme](https://github.com/EliverLara/Nordic) with [Zafiro Icons](https://github.com/zayronxio/Zafiro-icons).

```sh
mkdir ~/.themes
mkdir ~/.icons

curl -o ~/Downloads/Nordic-darker-v40.tar.xz https://github.com/EliverLara/Nordic/releases/download/v2.2.0/Nordic-darker-v40.tar.xz
curl -o ~/Downloads/Zafiro-Icons-Dark.tar.xz https://github.com/zayronxio/Zafiro-icons/releases/download/1.3/Zafiro-Icons-Dark.tar.xz

tar -xf Nordic-darker-v40.tar.xz -C ~/.themes
tar -xf Zafiro-Icons-Dark.tar.xz -C ~/.icons

git clone https://github.com/EliverLara/Nordic ~/.icons/
mv ~/.icons/Nordic/kde/cursors/Nordic-cursors ~/.icons/
```


