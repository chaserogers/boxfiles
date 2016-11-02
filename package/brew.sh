# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
brew tap homebrew/dupes
brew update
brew upgrade

# Install packages
packages=(
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

brew install "${packages[@]}"
