if cat /etc/os-release| grep Debian,Ubuntu then
sudo apt install dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev meson

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile
mkdir -p build && cd build
meson ..
ninja
sudo ninja install

cd ..

rsync config .config

elif cat /etc/os-release | grep Arch,Manjaro,Arco,Endeavour,MatuusOS then
sudo pacman -S --needed --noconfirm lxsession i3 lxdm xorg-xserver papirus-icon-theme arc-gtk-theme chromium rsync
rsync config .config
