#Clone powerlevel10k

git clone --depth=1 https://github.com/romkatv/powerlevel10k

#Clone my dotfiles
git clone https://github.com/Dr-42/dotfiles

cp -r dotfiles/.config ~/
cp -r dotfiles/.zshrc ~/

#Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
cargo install ripgrep
cargo install builder_cpp
