#!/bin/bash

# Paths to the configuration files
picom_config="$HOME/.config/picom/picom.conf"
i3_config="$HOME/.config/i3/config"
alacritty_config="$HOME/.config/alacritty/alacritty.toml"
zsh_config="$HOME/.zshrc"
nvim_config="$HOME/.config/nvim/init.vim"
npm_config="$HOME/.npmrc"
vscode_extensions="$HOME/.vscode-oss/extensions.txt"
vscode_config="$HOME/.config/Code - OSS/User/settings.json"
firefox_extension_list="$HOME/.mozilla/firefox/extensions.json"



# Initializing configs
code --list-extensions > "$vscode_extensions"
echo "VSCode extensions written to file"

# Copying the files to the current directory
cp "$picom_config" .
cp "$i3_config" .
cp "$alacritty_config" .
cp "$zsh_config" .
cp "$nvim_config" .
cp "$npm_config" .
cp "$vscode_extensions" .
cp "$vscode_config" .
cp "$firefox_extension_list" .

echo "Files copied successfully to $(pwd)"

