# Ubuntu setup by t.me/riZZZhik

# Update system
sudo apt update -y && sudo apt upgrade -y
sudo apt-get update -y && sudo apt-get upgrade -y

# Install system commands
sudo apt install htop git docker

# Install Telegram
sudo snap install telegram-desktop

# Instal Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Install Gnome tweaks and extensions
sudo apt install gnome-tweak-tool chrome-gnome-shell -y

# Install Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -y && sudo apt-get install spotify-client -y

# Install zsh
sudo apt install zsh -y

# Install oh-my-zsh with themes and plugins
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/popstas/zsh-command-time.git ~/.oh-my-zsh/custom/plugins/command-time

# Install ColorLS
sudo apt install ruby ruby-dev -y
gem install colorls -q

https://github.com/dracula/colorls
cp colorls/dark_colors.yaml ~/.config/colorls/dark_colors.yaml
rm -rf colorls

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

# Install PyCharm
sudo snap install pycharm-professional --classic

# Install Python 3.7
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt install python3.7 -y

# Copy config
cp .zshrc ~/.zshrc

# Echos
echo "Install Gnome extensions from gnome_extensions.txt" 
echo "Install UbuntuMono Nerd Font from https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/UbuntuMono"
echo "Install Hyper.JS terminal from https://hyper.is/#installation and setup with hyper-js_setup.sh"
