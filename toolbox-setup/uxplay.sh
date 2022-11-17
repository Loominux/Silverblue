sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf install openssl-devel libplist-devel avahi-compat-libdns_sd-devel  gstreamer1-devel gstreamer1-plugins-base-devel gstreamer1-libav gstreamer1-plugins-bad-free gstreamer1-plugins-good  cmake g++ make -y

git clone https://github.com/antimof/UxPlay

cd UxPlay/
cmake .
make
sudo make install
