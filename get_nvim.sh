#!/usr/bin/sh
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
echo "...move nvim to /usr/bin"
sudo mv nvim /usr/bin/vi
echo "...successful!"
