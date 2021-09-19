# Ubuntu setup by t.me/riZZZhik

# Base installations
yes | sudo sh install_base.sh

# Terminal installation
yes | sudo sh install_terminal.sh

# Work installations
yes | sudo sh install_work.sh

########################################################################################################################
# Configure
# Copy ZSH config
cp .zshrc ~/.zshrc

# Create default dir
mkdir ~/Desktop/dev

# Configure p10k theme
p10k Configure

# Save git credentials
git config --global credential.helper store

# Echos
echo "Ubuntu setup by t.me/riZZZhik"
echo "Install Gnome extensions from gnome_extensions.txt" 
echo "Install OpenVINO from https://docs.openvinotoolkit.org/latest/openvino_docs_install_guides_installing_openvino_linux.html"
echo "Install UbuntuMono Nerd Font from https://www.nerdfonts.com/font-downloads"
