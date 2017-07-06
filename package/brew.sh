# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew tap caskroom/cask
brew update
brew upgrade

# Install packages
packages=(
  ack
  autoconf
  automake
  bash
  bsdmake
  chromedriver
  coreutils
  cowsay
  dirmngr
  elasticsearch
  elixir
  erlang
  fortune
  freetype
  gdbm
  ghi
  ghostscript
  git
  gnupg2
  go
  gpg-agent
  gpgme
  graphviz
  heroku-toolbelt
  imagemagick
  jenkins
  jpeg
  leiningen
  libassuan
  libgcrypt
  libgpg-error
  libksba
  libpng
  libtiff
  libtool
  libusb
  libusb-compat
  libyaml
  little-cms2
  macvim
  mercurial
  mongodb
  mysql
  node
  openssl
  ossp-uuid
  pcre
  phantomjs
  pinentry
  pkg-config
  postgresql
  proctools
  pth
  python
  python3
  racket
  readline
  redis
  ruby
  ruby-build
  spark
  sqlite
  tokyo-cabinet
  tree
  unixodbc
  v8
  wxmac
  xz
)

casks=(
  alfred
  atom
  docker
  docker-toolbox
  google-chrome
  iterm2
  java
  postman
  slack
  spotify
  sublime-text
  vlc
  xact
)

brew cask install "${casks[@]}"
brew install "${packages[@]}"
