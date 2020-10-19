# Install packages
packages=(
  nodejs
  python
  ripgrep

  apt-transport-https
  build-essential
  ca-certificates
  curl
  libbz2-dev
  libffi-dev
  llvm
  libncurses5-dev
  libreadline-dev
  libsqlite3-dev
  libssl-dev
  libxml2-dev
  libxmlsec1-dev
  liblzma-dev
  software-properties-common
  tk-dev
  wget
  xz-utils
  zlib1g-dev
)

sudo apt update
sudo apt install --no-install-recommends "${packages[@]}"
