#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "
## ###       ### ##
Start linking paths
## ###       ### ##
"
for file in "$DOTFILES_DIR/Configs"/*; do
    if [ -d "$file" ]; then
        CONFIG_DIR="$HOME/.config/$(basename "$file")"
        echo "  Processing: $CONFIG_DIR"
        if [ -d  "$CONFIG_DIR" ]; then
            rm -r $CONFIG_DIR
        fi

        ln -s "$file" "$CONFIG_DIR"
    fi
done
