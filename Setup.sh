#!/bin/bash
NAME=Homura
VER=1.7
TODO=$(zenity --list --radiolist --height=50 --width 300 --title="$NAME $VER Installer" --text "What do you want to do?" --hide-header --column "$NAME" --column "Item" FALSE "Install Homura" FALSE "Uninstall Homura")

if [[ $TODO == *"Install Homura"* ]]; then
mkdir /home/$USER/.local/share/$NAME
cd /home/$USER/.local/share/$NAME
curl -O http://alt.magzu.net/damn/dl/$NAME.png
curl -O -L https://github.com/Alexander88207/$NAME/archive/$VER.tar.gz
tar -xf $VER.tar.gz
mv /home/$USER/.local/share/$NAME/$NAME-$VER/$NAME.sh /home/$USER/.local/share/$NAME/$NAME.sh
rm /home/$USER/.local/share/$NAME/$VER.tar.gz
rm -d -r /home/$USER/.local/share/$NAME/$NAME-$VER
mkdir -p /home/alexander/.local/share/applications
echo "[Desktop Entry]
Comment=
Exec=bash /home/$USER/.local/share/$NAME/$NAME.sh
Icon=/home/$USER/.local/share/Homura/Homura.png
Categories=Game;
Name=Homura
StartupNotify=false
Terminal=false
TerminalOptions=
Type=Application
X-DBUS-ServiceName=
X-DBUS-StartupType=
X-KDE-SubstituteUID=false
X-KDE-Username=
" >> /home/alexander/.local/share/applications/$NAME.desktop
fi

if [[ $TODO == *"Uninstall Homura"* ]]; then
rm /home/$USER/.local/share/applications/$NAME.desktop
rm /home/$USER/Desktop/$NAME.desktop
rm -d -r /home/$USER/.local/share/$NAME
fi
notify-send Done!
