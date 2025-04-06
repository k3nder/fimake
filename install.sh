#! /usr/bin/fish
echo "Installing FIMAKE..."
mkdir ~/.config/fimake
set -U FIMAKE_HOME "~/.config/fimake/"
echo "
function fimake
    ~/.config/fimake/src/main
end
" > ~/.config/fish/fimake.fish
git clone https://github.com/k3nder/fimake.git $FIMAKE_HOME
echo "FIMAKE INSTALLED"
