#!/bin/bash

pushd "${BASH_SOURCE%/*}" || {echo "could not locate script with BASH_SOURCE"; exit}
../all/preinstall.sh
popd

# Dev environment
dnf install -y git gitk screen autojump wget eclipse subversion mc xclip
dnf install -y emacs # icicles xcscope (manually on fedora)
dnf install -y htop stress procinfo tree lm_sensors pass
dnf install -y macchanger nmap

# Dev tools
dnf groupinstall "C Development Tools and Libraries"
dnf install -y haskell-platform hlint
cabal update
cabal install hasktags ghc-mod hoogle primes base-unicode-symbols
#dnf install -y stack ... ?
dnf install -y python-pip  sympy python-ipython scipy python3-scipy
dnf install -y lttng-tools lttng-ust kernel-devel #TODO install lttng kernel modules ( see www.lttng.org/download/#fedora )
dnf install -y discount # markdown

# Other repos
dnf install -y http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


# Window manager
## Xmonad
dnf install -y xcompmgr xmonad xmobar scrot xscreensaver-base gnome-screensaver
dnf install -y rxvt-unicode-256color xbacklight wireless-tools mpc ncmpcpp mpd
dnf install -y NetworkManager-tui feh

## Gnome
dnf install -y gnome-tweak-tool

# Other
dnf install -y gstreamer1-plugins-base gstreamer1-plugins-good gstreamer1-plugins-ugly \
    gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld \
    gstreamer1-plugins-bad-free-extras gstreamer1-libav ffmpeg # Codecs
dnf install -y solfege lynx liveusb-creator units unrar vlc
dnf install -y gimp inkscape dia darktable fbida xournal
dnf install -y aspell-en aspell-fr hunspell-fr verbiste
dnf install -y texlive djvulibre graphviz texlive-babel-french texlive-babel-french-doc libxslt texlive-lettre
dnf install -y figlet cowsay fortune-mod
dnf install -y lame audacity
dnf install -y opencv-devel
# dnf install -y google-chrome-stable ## Needs the google repo
