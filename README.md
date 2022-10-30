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

Install Flatpak packages

```sh
flatpak install flathub com.usebottles.bottles



## Theme
https://github.com/zayronxio/Zafiro-icons
https://github.com/EliverLara/Nordic
