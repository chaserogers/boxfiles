# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/services
brew tap caskroom/cask-cask
brew update
brew upgrade --all

# Install packages
packages=(
  ack
  autoconf
  automake
  bash
  bsdmake
  coreutils
  cowsay
  csshx
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
  git-flow
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
  rbenv
  readline
  redis
  rg
  ruby
  ruby-build
  spark
  sqlite
  tfenv
  tokyo-cabinet
  tree
  unixodbc
  v8
  wxmac
  xz
  yarn
)

casks=(
  alfred
  iterm2
  java
  karabiner-elements
  postman
  slack
  spotify
  sublime-text
  visual-studio-code
  vlc
  xact
)

brew cask install "${casks[@]}"
brew install "${packages[@]}"

brew services start --all
