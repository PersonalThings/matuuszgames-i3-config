if cat /etc/os-release| grep Debian,Ubuntu then
pkexec apt install git rsync -y
git clone https://github.com/DebianFanboy/debian-i3gaps-from-scratch.git
cd debian-i3gaps-from-scratch
chmod +x run.sh
./run.sh
cd ..
rsync config .config
elif cat /etc/os-release | grep Arch,Manjaro,Arco,Endeavour,MatuusOS then
sudo pacman -S --needed lxsession i3 lxdm xorg-xserver papirus-icon-theme arc-gtk-theme chromium rsync
rsync config .config
