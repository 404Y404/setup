!#/bin/bash
sudo pacman -Suy --noconfirm
sudo pacman -S telegram-desktop --noconfirm
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S google-chrome zoom --noconfirm
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu sublime-text
echo "install theme Material Theme choose Material-Theme-Darker"
echo "install anaconda emmet AutoFileName localizedMenu"
echo "press enter after installing"
read
cat sublime-settings.txt > ~/.config/sublime-text/Packages/User/Preferences.sublime-settings
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
echo "change in ~/.zshrc"
echo "plugins=(git zsh-syntax-highlighting)"
echo "press enter after changes"
read
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
echo 'change ZSH_THEME="powerlevel10k/powerlevel10k"'
echo "press enter after changes"
read
p10k configure
