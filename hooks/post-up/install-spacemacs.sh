cd ~
if [ ! -d .emacs.d/ ]; then
    echo "==> Downloading Spacemacs..."
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
else
    echo "==> .emacs.d/ already present"
fi
