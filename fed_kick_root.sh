# Script to setup fedora post install
# Entire script is runs on root user

# Add parrallel download to dnf
echo "max_parallel_downloads=10" >> /etc/dnf/dnf.conf
# Add fastest mirror to dnf
echo "fastestmirror=true" >> /etc/dnf/dnf.conf

# Replace GNOME with KDE
dnf swap @gnome-desktop @kde-desktop -y

# Install Important packages
dnf install alacriitty -y
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
