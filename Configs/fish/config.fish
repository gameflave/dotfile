source /usr/share/cachyos-fish-config/cachyos-config.fish

set -e GTK_IM_MODULE
set -Ux QT_IM_MODULE fcitx
set -Ux QT_IM_MODULES "wayland;fcitx"
#set -Ux SDL_IM_MODULE fcitx
set -Ux XMODIFIERS @im=fcitx

if test -z "$(pgrep ssh-agent)"
  eval "$(ssh-agent -c)"
  ssh-add ~/.ssh/github
  ssh-add ~/.ssh/gitlab
end

set -Ux CC clang
set -Ux CXX clang++

set -gx PATH $PATH /home/flave/.local/bin

alias maj='paru -Syu --ask 999 && flatpak update'
