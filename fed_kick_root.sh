# Script to setup fedora post install
# Entire script is runs on root user

# Add parrallel download to dnf
echo $'\nmax_parallel_downloads=10\n' >> /etc/dnf/dnf.conf
# Add fastest mirror to dnf
echo $'fastestmirror=true\n' >> /etc/dnf/dnf.conf

# NVIDIA Drivers
dnf install xorg-x11-drv-nvidia -y
dnf install xorg-x11-drv-nvidia-cuda -y
dnf install xorg-x11-drv-nvidia-cuda-libs -y
dnf install xorg-x11-drv-nvidia-libs -y

# Replace GNOME with KDE
dnf swap @gnome-desktop @kde-desktop -y
dnf install sddm
systemctl disable gdm
systemctl enable sddm

# Install Important packages
# dnf install alacritty -y
dnf install kitty -y
dnf install neovim -y
dnf install gh -y
dnf install zsh -y
dnf install fastfetch -y
dnf install zsh-syntax-highlighting -y
dnf install zsh-autosuggestions -y

# Install Wayland clipboard
dnf install wl-clipboard -y

# Install C C++ and libraies
dnf install gcc -y
dnf install g++ -y

dnf install glfw-devel -y
dnf install glew-devel -y
dnf install glm-devel -y
dnf install stb-devel -y
dnf install assimp-devel -y
dnf install ncurses-devel -y

#install nodejs
dnf install nodejs -y

#install filelight
dnf install filelight -y

#install btop
dnf install btop -y

# install multimedia
dnf install libavcodec-freeworld -y
dnf install x265-libs libde265 -y
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-39.noarch -y
dnf group upgrade --with-optional Multimedia --allowerasing -y
dnf install ffmpeg-free-devel -y
dnf install mpv-devel -y
dnf install vlc -y
