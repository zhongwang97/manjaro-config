source $(dirname "$0")/utils.sh

checkSudo

read -p "update pacman mirror?: [yn] " yn
if [[ ${yn} == "y" ]]; then
    pacman-mirrors -i -c China
fi

cat>>/etc/pacman.conf<<EOF
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/\$arch
[arch4edu]
SigLevel = Never
Server = http://mirrors.tuna.tsinghua.edu.cn/arch4edu/\$arch
EOF

pacman -Syyu

tryInstall archlinuxcn-keyring

tryInstall vim
tryInstall git
tryInstall zsh
tryInstall screenfetch
tryInstall bind-tools
tryInstall the_silver_searcher
tryInstall tree
tryInstall lsof
tryInstall autojump
tryInstall fzf
tryInstall wqy-microhei

tryInstall zip
tryInstall unzip
tryInstall ipython

tryInstall glances
tryInstall nmon
tryInstall s-tui
tryInstall traceroute

tryInstall google-chrome

tryRemove midori
tryRemove ms-office-online
tryRemove sylpheed
tryRemove parole

tryRemove epiphany
tryRemove hexchat
tryRemove totem

tryRemove yakuake
tryRemove falkon
tryRemove konversation
tryRemove vlc


# cp $(dirname "$0")/resources/kde/konsole/konsolerc /home/${SUDO_USER}/.config/konsolerc
# cp $(dirname "$0")/resources/kde/konsole/Shell.profile /home/${SUDO_USER}/.local/share/konsole

hint 'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
hint "setup ohmyzsh"