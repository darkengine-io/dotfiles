cd ~
if [ ! -d .emacs.d/ ]; then
    echo "==> Downloading Spacemacs..."
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
else
    echo "==> Updating Spacemacs..."
    cd .emacs.d/
    git pull
fi
