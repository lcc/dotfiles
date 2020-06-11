sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)7"
pacman -S --needed - < pkglist.txt
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install # M-x all-the-icons-install-fonts(might be necessary)
