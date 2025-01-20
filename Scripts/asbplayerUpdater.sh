#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$(cut -d'/' -f-1 "${BASH_SOURCE[0]}")")" && pwd)"

echo "Start updating asbplayer extention"

CURRENT_VERSION_DIR="$(ls Other/Brave/ | grep asbplayer)"
if [ -z  "$CURRENT_VERSION_DIR" ]; then
    LOCAL_VERSION="0.0.0"
else
    LOCAL_VERSION="$(cut -d'-' -f3 <<< "$CURRENT_VERSION_DIR")"
fi

REMOTE_VERSION=$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/killergerbah/asbplayer/releases/latest)
REMOTE_VERSION=${REMOTE_VERSION##*/}
REMOTE_VERSION=${REMOTE_VERSION:1}

echo "Local verion:${LOCAL_VERSION}, Remote version:${REMOTE_VERSION}"

if (( ${LOCAL_VERSION//./} >= ${REMOTE_VERSION//./} )); then
    echo "Already up to date"
    exit 0
fi

if [ -n "$CURRENT_VERSION_DIR" ]; then
    rm -r "${DOTFILES_DIR}/Other/Brave/${CURRENT_VERSION_DIR}"
fi

wget -q --show-progress -P "${DOTFILES_DIR}/Other/Brave" https://github.com/killergerbah/asbplayer/releases/download/v${REMOTE_VERSION}/asbplayer-extension-${REMOTE_VERSION}-chromium.zip
unzip -q "${DOTFILES_DIR}/Other/Brave/asbplayer-extension-${REMOTE_VERSION}-chromium.zip" -d "${DOTFILES_DIR}/Other/Brave/asbplayer-extension-${REMOTE_VERSION}-chromium"
rm "${DOTFILES_DIR}/Other/Brave/asbplayer-extension-${REMOTE_VERSION}-chromium.zip"

