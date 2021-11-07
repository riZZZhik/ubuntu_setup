# Update system
sudo apt update && sudo apt upgrade && sudo apt autoremove
sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove

# Install base requirements
sudo apt install apt-transport-https ca-certificates htop git docker curl

# Install Gnome tweaks and extensions
sudo apt install gnome-tweak-tool chrome-gnome-shell -y

# Install Telegram
sudo snap install telegram-desktop

# Install Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

# Install grub theme and customizer
wget -O - https://github.com/shvchk/poly-light/raw/master/install.sh | bash
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install grub-customizer