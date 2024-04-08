#!/bin/bash

apt -y update && apt -y upgrade

apt install -y ibus-chewing
# Go to setting switch this chinese input, need to restart. In input source add it. 然後要把 tab 切換關掉

apt install -y git
apt install -y vim
apt install -y build-essential
apt install -y net-tools

git config --global core.editor "vim"
# git config --global user.email "you@example.com"
# git config --global user.name "Your Name"


# Install chrome
# Install discord
# Install vscode, sync setting

# Other
# 1. Add terminal to favorite
# 2. Remove help and store from unfavorite
# 3. Change background
# 4. 更改 icon 大小  a. size -> small b. icon size -> 28

# 快捷鍵設定 https://www.hashbangcode.com/article/turning-or-fn-mode-ubuntu-linux
# 設定 fn mode https://superuser.com/questions/79822/how-to-swap-the-fn-use-of-function-keys-on-an-apple-keyboard-in-linux
# chrome prefer 語言第一個轉成中文 不是全部轉成中文
# sudo apt install net-tools https://officeguide.cc/linux-configure-network-interface-ifconfig-command-tutorial-examples/
# sudo apt install -f，自動安裝缺少的dependencise
# install forclient for CCU VPN
# Okular for pdf reading
# https://lizenshakya.medium.com/screen-share-not-working-in-ubuntu-fixed-1b81741a07c1 因為 share screen 會出事
# 新酷音打字 sudo apt install ibus-chewing https://medium.com/@scofield44165/ubuntu-20-04%E4%B8%AD%E6%96%B0%E5
# %A2%9E%E6%96%B0%E9%85%B7%E9%9F%B3%E8%BC%B8%E5%85%A5%E6%B3%95-add-chinese-chewing-in-ubuntu-20-04-5ce78563638b
# https://askubuntu.com/questions/1407494/screen-share-not-working-in-ubuntu-22-04-in-all-platforms-zoom-teams-google-m, share screen 問題
# nouveou 關掉 https://clay-atlas.com/blog/2020/02/11/linux-chinese-note-nvidia-driver-nouveau-kernel/
# nouveou 回覆 https://askubuntu.com/questions/206283/how-can-i-uninstall-a-nvidia-driver-completely
# init: vmware shortcut problem https://askubuntu.com/questions/970982/guest-os-shortcuts-are-not-working-on-ubuntu-17-10-in-vmware-horizon-view-and-vi
