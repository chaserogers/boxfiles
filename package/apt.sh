# Install packages
packages=(
  nodejs
  python
  ripgrep

  apt-transport-https
  build-essential
  ca-certificates
  cmake
  curl
  gnupg-agent
  gnupg2
  jq
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
  neofetch
  software-properties-common
  tk-dev
  unzip
  wget
  xz-utils
  zlib1g-dev
)

sudo apt -y update
sudo apt -y install --no-install-recommends "${packages[@]}"
