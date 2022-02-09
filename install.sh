#!/usr/bin/sh

CONFIG_DIR=$HOME/.config
REPOS_SSH_URL=git@github.com:lcc

create_dirs()
{
    mkdir -p $CONFIG_DIR/xmonad
    mkdir -p $CONFIG_DIR/xmobar
    mkdir -p $CONFIG_DIR/aur
    mkdir -p $HOME/pictures
    mkdir -p $HOME/workspace
}

install_xmonad()
{
    cd $CONFIG_DIR/xmonad/
    curl -sSL https://get.haskellstack.org/ | sh
    git clone https://github.com/xmonad/xmonad
    git clone https://github.com/xmonad/xmonad-contrib

    stack init
    stack install
}

install_st()
{
    git clone $REPOS_SSH_URL/st.git $CONFIG_DIR/st && cd $CONFIG_DIR/st  && git checkout dracula-theme && sudo make clean install
}

install_dmenu()
{
    git clone $REPOS_SSH_URL/dmenu.git  $CONFIG_DIR/dmenu && cd $CONFIG_DIR/dmenu && git checkout myconfig && sudo make clean install
}

install_pure()
{
    git clone $REPOS_SSH_URL/pure.git $CONFIG_DIR/pure
}

install_doom_emacs()
{
    git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
    ~/.emacs.d/bin/doom install
}

install_oh_my_zsh()
{
    sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)7"
}

install_system_packages()
{
    pacman -S --needed - < pkglist.txt
}

install_system_packages
create_dirs
install_oh_my_zsh
install_doom_emacs
install_xmonad
install_st
install_dmenu
install_pure

cd $HOME/dotfiles && stow .config && stow pictures && stow .gitconfig && stow .xinitrc && stow .zprofile && stow .zshrc
