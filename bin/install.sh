#!/bin/bash
PKGPATH=$HOME/.dotfiles/pkg

cd $PKGPATH
for file in .??*; do
    ln -snfv "$PKGPATH/$file" "$HOME/$file"
done

