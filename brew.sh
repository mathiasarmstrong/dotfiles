#!/usr/bin/env bash

# Outline of procedure
# Install bash4
# Switch to bash4 for remaining parts of this app
# Install zsh
# Install zplug
# Install brews
# Install casks

# Make sure we’re using the latest Homebrew.
brew update
brew upgrade
# Remove outdated versions from the cellar.
brew cleanup

# Install GNU core utilities (those that come with macOS are outdated).
brew install coreutils # Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install moreutils # Install some other useful utilities like `sponge`.
brew install findutils # Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install gnu-sed --with-default-names # Install GNU `sed`, overwriting the built-in `sed`.

###################
# Install Bash 4. #
###################
brew install bash
# if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
# 	echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
# fi;
brew install bash-completion2

brew install zsh
brew install zsh-completions
brew install zsh-autosuggestions
brew install zplug

#####################
# Install Databases #
#####################
brew install mongodb
brew install postgresql
brew install sqlite
brew install mysql-client

brew install ack
brew install adns
brew install wget --with-iri # Install `wget` with IRI support.
brew install gnupg # Install GnuPG to enable PGP-signing commits.

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew tap caskroom/fonts
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
brew install fontconfig
brew install freetype
# TODO: package zsh depedencies into a pre-procedure
brew cask install --appdir="/Applications" font-3270-nerd-font
brew cask install --appdir="/Applications" font-hack-nerd-font

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install stow
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz
brew install shellcheck
brew install spim
brew install wget
brew install go
brew install ant
brew install ffmpeg
brew install eigen
brew install opencv
brew install terminal-notifier

# brew install exiv2
brew install icu4c
brew install ilmbase
brew install isl
brew install jasper
brew install jpeg
brew install lame
brew install libassuan
brew install libdnet
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libidn2
brew install libksba
brew install libmpc
brew install libpng
brew install libtasn1
brew install libtiff
brew install libtool
brew install libunistring
brew install libusb
brew install libyaml
brew install little-cms2
brew install mat
brew install meson
brew install mpfr
brew install neofetch
brew install nettle
brew install ninja
brew install npth
brew install openexr
brew install openjpeg
brew install openssl
brew install p11-kit
brew install pcre
brew install perl
brew install pinentry
brew install pixman
brew install pkg-config
brew install poppler
brew install pv
brew install qt
brew install readline
brew install ssdeep
brew install unrar
brew install unzip
brew install x264
brew install xvid
brew install gnutls
brew install glib
brew install gettext
brew install gdbm
brew install git
brew install git-lfs
brew install gcc
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli
brew install ansible
brew install apache-zeppelin
brew install autoconf
brew install brotli
brew install cairo
brew install flow

brew cask install --appdir="/Applications" osxfuse
brew cask install --appdir="/Applications" hazel
brew cask install --appdir="/Applications" 1password
brew cask install --appdir="/Applications" battle-net
brew cask install --appdir="/Applications" daisydisk
brew cask install --appdir="/Applications" istat-menus
brew cask install --appdir="/Applications" microsoft-office
brew cask install --appdir="/Applications" veracrypt
brew cask install --appdir="/Applications" airmail-beta
brew cask install --appdir="/Applications" dash
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" textual
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dbeaver-enterprise
brew cask install --appdir="/Applications" freecad
brew cask install --appdir="/Applications" java
brew cask install --appdir="/Applications" postman
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" discord
brew cask install --appdir="/Applications" geektool
brew cask install --appdir="/Applications" kdiff3
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" wine-stable
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" gitkraken
brew cask install --appdir="/Applications" keepingyouawake
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" wineskin-winery
brew cask install --appdir="/Applications" bartender
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" kindle
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" wireshark-chmodbpf
brew cask install --appdir="/Applications" beamer
brew cask install --appdir="/Applications" epic-games
brew cask install --appdir="/Applications" google-chrome-canary
brew cask install --appdir="/Applications" libreoffice
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" xquartz
brew cask install --appdir="/Applications" cakebrew
brew cask install --appdir="/Applications" exodus
brew cask install --appdir="/Applications" gpg-suite
brew cask install --appdir="/Applications" little-snitch
brew cask install --appdir="/Applications" micro-snitch
brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" zoom
brew cask install --appdir="/Applications" cardhop
brew cask install --appdir="/Applications" fantastical
brew cask install --appdir="/Applications" grammarly
brew cask install --appdir="/Applications" mactracker
brew cask install --appdir="/Applications" teamviewer
brew cask install --appdir="/Applications" charles
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" hex-fiend
brew cask install --appdir="/Applications" meld
brew cask install --appdir="/Applications" transmission
brew cask install --appdir="/Applications" chatology
brew cask install --appdir="/Applications" firestormos
brew cask install --appdir="/Applications" ipartition
brew cask install --appdir="/Applications" unity
brew cask install --appdir="/Applications" timely
brew cask install --appdir="/Applications" kitty
brew cask install --appdir="/Applications" wifi-explorer
brew cask install --appdir="/Applications" docker

# Remove outdated versions from the cellar.
brew cleanup

echo "******************** COMPLETED BREW INSTALLATION ********************"
echo "add `/usr/local/bin/bash` to `/etc/shells`"
echo "add `/usr/local/bin/zsh` to `/etc/shells`"
