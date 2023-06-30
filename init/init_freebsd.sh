#!/bin/sh
echo "Install basic tools"

pkg

pkg update && pkg upgrade

pkg install sudo

visudo 
# Uncomment this statement
# %wheel ALL=(ALL) ALL

pkg install vim

vi /etc/rc.conf
# Add the this statment
# sshd_enable="YES"

/etc/rc.d/sshd start

# Phabriactor
pkg install devel/arcanist
# Add in .cshrc
# alias arc       /usr/local/lib/php/arcanist/bin/arc
# Add in .shrc
# alias arc="/usr/local/lib/php/arcanist/bin/arc"

# Install git?
# Install htop?

# Desktop
if [ -n "$DESKTOP" ]; then
    echo "Install GUI tools"
    # Install KDE
    pkg install noto
    # pkg install firefox?
    pkg install chromium # shared memory should be enable? Refer https://forums.freebsd.org/threads/install-chrome-on-freebsd.53976/
else