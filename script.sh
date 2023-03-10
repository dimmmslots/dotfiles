#!/bin/bash

declare -a files=(".bashrc" "config" ".fehbg" ".gitconfig" ".zshrc")

for file in "${files[@]}"
do
    if [ "$file" = "config" ]
    then
        ln -sf "$HOME/$file" "$HOME/.config/i3/$file"
        echo "Created symlink for $file in ~/.config/i3/"
    else
        ln -sf "$HOME/$file" "$HOME/$file"
        echo "Created symlink for $file"
    fi
done
