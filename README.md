# Silverblue

This is my Fedora [Silverblue](https://silverblue.fedoraproject.org) setup.

## Preview

![Preview](https://user-images.githubusercontent.com/115210873/199125395-d0ec6b6f-ad1b-4c50-b8fd-4263df1a1789.png)

I got my Wallpaper (nordic-obsession), from [this repo](https://github.com/dxnst/nord-wallpapers).

## Script

Run the script 
```sh
curl https://raw.githubusercontent.com/Loominux/Silverblue/main/Silverblue-setup.sh | sh
```

After the reboot run these commands and set `Nord` as the default Terminal Profile


```sh
gnome-extensions enable caffeine@patapon.info
gnome-extensions enable gsconnect@andyholmes.github.io
gnome-extensions enable no-overview@fthx
gnome-extensions enable trayIconsReloaded@selfmade.pl
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
```

## Software

```sh
rpm-ostree install htop neofetch wine openssl lutris neovim gnome-themes-standard 
```

### Install Flatpak

```sh
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo
sudo flatpak remote-modify flathub --enable
```

Install [Flatpak](https://www.flatpak.org) packages

```sh
flatpak install flathub com.valvesoftware.Steam com.discordapp.Discord com.valvesoftware.Steam.CompatibilityTool.Proton-GE com.raggesilver.BlackBox
```
## Gnome Shell Extensions

I use [this](https://github.com/brunelli/gnome-shell-extension-installer/) script to install shell extensions

```sh
wget https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer -P  ~/Downloads/
chmod +x ~/Downloads/gnome-shell-extension-installer
~/Downloads/gnome-shell-extension-installer --yes 19 517 4099 1319 2890 

gnome-extensions enable caffeine@patapon.info
gnome-extensions enable gsconnect@andyholmes.github.io
gnome-extensions enable no-overview@fthx
gnome-extensions enable trayIconsReloaded@selfmade.pl
gnome-extensions enable user-theme@gnome-shell-extensions.gcampax.github.com
```

## Theme


### create folders
```sh
mkdir ~/.themes
mkdir ~/.icons
```

### Download and install GTK Theme
```sh
wget https://github.com/catppuccin/gtk/releases/download/v0.4.0/Catppuccin-Macchiato-Standard-Mauve-Dark.zip -P ~/Downloads/
tar -xf ~/Downloads/Nordic-darker-v40.tar.xz -C ~/.themes
```

### Download and install Icons and Cursor
```sh
git clone https://github.com/vinceliuice/Colloid-icon-theme ~/Downloads/Colloid-icon-theme
sh ~/Downloads/Colloid-icon-theme/install.sh -s dracula -t purple
cd ~/Downloads/Colloid-icon-theme/cursors/
./install.sh
```

### Download Wallpaper
```sh
git clone https://github.com/catppuccin/wallpapers ~/.themes/wallpaper
```

### GTK 4 config
```sh
mkdir -p "${HOME}/.config/gtk-4.0"
ln -sf "${HOME}/.themes/Catppuccin-Macchiato-Standard-Mauve-Dark//gtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "${HOME}/.themes/Catppuccin-Macchiato-Standard-Mauve-Dark//gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "${HOME}/.themes/Catppuccin-Macchiato-Standard-Mauve-Dark//gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
```

### Flatpak config
```sh
sudo flatpak override --filesystem=$HOME/.themes
sudo flatpak override --env=GTK_THEME=atppuccin-Macchiato-Standard-Mauve-Dark
sudo flatpak --user override --filesystem=/home/$USER/.icons/:ro
```

### gnome configuration

```sh
dconf write /org/gnome/shell/extensions/user-theme/name"'Catppuccin-Macchiato-Standard-Mauve-Dark'"
gsettings set org.gnome.desktop.background picture-uri-dark ~/.themes/wallpaper/minimalistic/gradient-synth-cat.png
gsettings set org.gnome.desktop.peripherals.mouse accel-profile 'flat'
gsettings set org.gnome.desktop.interface gtk-theme "atppuccin-Macchiato-Standard-Mauve-Dark"
gsettings set org.gnome.desktop.wm.preferences theme "atppuccin-Macchiato-Standard-Mauve-Dark"
gsettings set org.gnome.desktop.interface icon-theme "Colloid-purple-dracula-dark'"
gsettings set org.gnome.desktop.interface cursor-theme "Colloid-cursors"
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize:appmenu'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

### Terminal BlackBox Theme 
```sh
mkdir -p ~/.var/app/com.raggesilver.BlackBox/config/glib-2.0/settings
echo "[com/raggesilver/BlackBox]
style-preference=2
theme-dark='Catppuccin-Macchiato'" > ~/.var/app/com.raggesilver.BlackBox/config/glib-2.0/settings/keyfile

mkdir ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes
curl -o ~/.var/app/com.raggesilver.BlackBox/data/blackbox/schemes/Catppuccin-Macchiato.json https://raw.githubusercontent.com/catppuccin/blackbox/main/src/Catppuccin-Macchiato.json

```
