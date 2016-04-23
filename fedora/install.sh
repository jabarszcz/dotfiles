#!/usr/bin/env bash

# Dev environment
dnf install -y emacs git gitk screen autojump wget eclipse subversion mc
dnf install -y htop stress procinfo tree
dnf install -y macchanger nmap

# Dev tools
dnf groupinstall "C Development Tools and Libraries"
dnf install -y haskell-platform emacs-haskell-mode hlint
#dnf install -y stack ... ?
dnf install -y python-pip  sympy python-ipython scipy python3-scipy
dnf install -y lttng-tools
dnf install -y discount # markdown

# Other repos
dnf install -y http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


# Window manager
## Xmonad
dnf install -y xcompmgr xmonad xmobar scrot xscreensaver-base gnome-screensaver
dnf install -y rxvt-unicode-256color xbacklight wireless-tools mpc ncmpcpp mpd
dnf install -y NetworkManager-tui feh

## Gnome
dnf install -y gnome-tweak-tool

# Other
dnf install -y solfege lynx liveusb-creator units unrar vlc
dnf install -y gimp inkscape dia darktable fbida xournal
dnf install -y aspell-en aspell-fr hunspell-fr verbiste
dnf install -y texlive djvulibre graphviz texlive-babel-french texlive-babel-french-doc libxslt texlive-lettre
dnf install -y figlet cowsay fortune-mod
dnf install -y lame audacity
dnf install -y opencv-devel
# dnf install -y google-chrome-stable ## Needs the google repo
