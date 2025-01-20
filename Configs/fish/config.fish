source /usr/share/cachyos-fish-config/cachyos-config.fish
# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

set -e GTK_IM_MODULE
set -Ux QT_IM_MODULE fcitx
set -Ux QT_IM_MODULES "wayland;fcitx"
#set -Ux SDL_IM_MODULE fcitx
set -Ux XMODIFIERS @im=fcitx

set -Ux LIBVIRT_DEFAULT_URI 'qemu:///system'

set -Ux CC clang
set -Ux CXX clang++

set -gx PATH $PATH /home/flave/.local/bin

alias maj='paru -Syu --ask 999 && flatpak update'
