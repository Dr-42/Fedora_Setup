git clone https://github.com/Dr-42/dotfiles
cp dotfiles/.config /home/spandan/ -r
cp dotfiles/.zshrc /home/spandan/.zshrc
git clone https://github.com/finkrer/KeyboardChatteringFix-Linux
git clone https://github.com/romkatv/powerlevel10k
wget -P /home/spandan/ https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget -P /home/spandan/ https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget -P /home/spandan/ https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
wget -P /home/spandan/ https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install ripgrep builder_cpp
