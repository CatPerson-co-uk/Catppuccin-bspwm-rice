# Config Files
sudo cp -r .bin ~/
sudo cp -r .config ~/
sudo cp -r .fonts ~/
sudo cp -r .icons ~/
sudo cp -r .themes ~/
sudo cp -r .vim ~/
sudo cp -r powerlevel10k ~/
sudo cp -r Wallpapers ~/
sudo cp .p10k.zsh ~/
sudo cp .zshrc ~/

# Yay Install
git clone https://aur.archlinux.org/yay.git
chown $user:$user ./yay
cd yay
makepkg -si
cd ..
rm -r -f ./yay/

# Applications
sudo pacman -Sy
sudo pacman -S --noconfirm \
git \
xorg \
discord \
firefox \
go \
base-devel \
ttf-dejavu \
htop \
fakeroot \
minizip \
sxhkd \
ranger \
dmenu \
pulseaudio \
pavucontrol \
picom \
bspwm \
kitty \
samba \
feh \
rsync \
python3 \
amd-ucode \
nvidia-dkms \
unzip \
zip \
thunar \
udiskie \
rofi \
ttf-font-awesome \
steam \
lightdm \
lightdm-gtk-greeter \
noto-fonts \
noto-fonts-emoji \
zsh \
wget \
lib32-nvidia-utils \
atom \
vlc 

# ohmyzsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

yay -S --noconfirm \
betterlockscreen \
polybar \
clearine-git \
betterdiscord-installer \
opentabletdriver \
github-desktop

systemctl enable lightdm
reboot
