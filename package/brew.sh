# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew upgrade

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
  elasticsearch
  elixir
  erlang
  fortune
  freetype
  gdbm
  ghi
  git
  git-flow
  gnupg2
  go
  graphviz
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
  mysql
  node
  openssl
  ossp-uuid
  pcre
  pinentry
  pkg-config
  postgresql
  proctools
  pth
  python3
  readline
  redis
  rg
  ruby
  ruby-build
  spark
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
  homebrew/cask-versions/adoptopenjdk8
  iterm2
  postman
  slack
  spotify
  visual-studio-code
)

brew cask install "${casks[@]}"
brew install "${packages[@]}"

brew services start --all
