rpm-ostree cancel

rpm-ostree upgrade


flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

rpm-ostree cancel
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

systemctl reboot
