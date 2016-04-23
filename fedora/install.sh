#!/usr/bin/env bash

# Dev environment
dnf install emacs git gitk screen autojump wget eclipse subversion mc
dnf install htop stress procinfo tree
dnf install macchanger nmap

# Dev tools
dnf groupinstall "C Development Tools and Libraries"
dnf install haskell-platform emacs-haskell-mode hlint
#dnf install stack ... ?
dnf install python-pip  sympy python-ipython scipy python3-scipy
dnf install lttng-tools
dnf install discount # markdown

# Other repos
dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


# Window manager
## Xmonad
dnf install xcompmgr xmonad xmobar scrot xscreensaver-base gnome-screensaver
dnf install rxvt-unicode-256color xbacklight wireless-tools mpc ncmpcpp mpd
dnf install NetworkManager-tui feh

## Gnome
dnf install gnome-tweak-tool

# Other
dnf install solfege lynx liveusb-creator units unrar vlc
dnf install gimp inkscape dia darktable fbida xournal
dnf install aspell-en aspell-fr hunspell-fr verbiste
dnf install texlive djvulibre graphviz texlive-babel-french texlive-babel-french-doc libxslt texlive-lettre
dnf install figlet cowsay fortune-mod
dnf install lame audacity
dnf install opencv-devel
# dnf install google-chrome-stable ## Needs the google repo
