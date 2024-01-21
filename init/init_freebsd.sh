#!/bin/sh

if [ "$1" = "-h" ]; then
    echo "Usage: $0 [-h]"
    echo "  -h         Display this help text"
    echo "  \$DESKTOP    Set to any value if you want to install a desktop environment"
    exit 0
fi

echo "Installing basic packages..."

# Install essential packages
pkg # Type 'y' after running this command
pkg update && pkg upgrade
pkg install -y vim 
pkg install -y git 
pkg install -y htop 
pkg install -y devel/arcanist

# Set up sudo access
if [ "$(pkg query %n sudo)" != "sudo" ]; then
    pkg install -y sudo
    visudo 
    # Uncomment this statement
    # %wheel ALL=(ALL) ALL
fi

# Enable SSH
sysrc sshd_enable=YES
/etc/rc.d/sshd start

# Desktop, https://hackmd.io/PA4jvjZZRHyIvFNzcTrs3Q?view
if [ -n "$DESKTOP" ]; then
    echo "Installing GUI tools..." # Install KDE Plasma

    pkg install xorg
    # Add the user you want 
    # pw groupmod video -m [username]

    pkg install kde5
    sysrc dbus_enable="YES"
    # You sholud edit etc/sysctl.conf by yourself
    sysctl net.local.stream.recvspace=65536
    sysctl net.local.stream.sendspace=65536
    echo "exec dbus-launch --exit-with-x11 ck-launch-session startplasma-x11" > ~/.xinitrc
    
    pkg install chromium # https://forums.freebsd.org/threads/chromium-disappeared-from-pkg-after-upgrade.87491/
    pkg install noto # Support chinese, https://ctext.org/font-test-page
    pkg install vscode
fi

echo "Create a normal user in FreeBSD using 'adduser'."
echo "Add the user to the 'wheel' group for sudo access."
echo "Current user list:"
cut -d: -f1 /etc/passwd
