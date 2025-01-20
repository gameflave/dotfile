#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$(cut -d'/' -f-1 "${BASH_SOURCE[0]}")")" && pwd)"

echo "Start linking paths"

for file in "$DOTFILES_DIR/Configs"/*; do
    if [ -e "$file" ]; then
        CONFIG_DIR="$HOME/.config/$(basename "$file")"

        if [ -L $CONFIG_DIR ]; then
            echo "  Skipping $CONFIG_DIR"
            continue
        fi

        echo "  Processing: $CONFIG_DIR"

        if [ -e  "$CONFIG_DIR" ]; then
            mv $CONFIG_DIR "$DOTFILES_DIR/Backups/config/"
        fi

        ln -s "$file" "$CONFIG_DIR"
    fi
done
