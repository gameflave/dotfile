# FIX: stop relying on cachyos config
source /usr/share/cachyos-fish-config/cachyos-config.fish

#set -Ux SDL_IM_MODULE fcitx
set -Ux XMODIFIERS @im=fcitx

# Setup ssh-agent
if test -z "$(pgrep ssh-agent)"
  eval "$(ssh-agent -c)"
  ssh-add ~/.ssh/github
  ssh-add ~/.ssh/gitlab
end

if uwsm check may-start
  exec uwsm start hyprland.desktop
end

# TODO: duplicate path when sourced multiple times
set -gx PATH $PATH ~/.local/bin
set -gx PATH $PATH ~/odin

alias maj='paru -Syu --ask 999 && flatpak update'
