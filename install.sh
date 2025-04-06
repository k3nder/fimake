#! /usr/bin/fish
echo "Installing FIMAKE..."
mkdir ~/.config/fimake
set -U FIMAKE_HOME "$HOME/.config/fimake/"
echo "
function fimake
    source $HOME/.config/fimake/src/main.fish
end
" > ~/.config/fish/functions/fimake.fish
git clone https://github.com/k3nder/fimake.git $FIMAKE_HOME
rm $FIMAKE_HOME/README.md
rm $FIMAKE_HOME/install.sh
echo "FIMAKE INSTALLED"
