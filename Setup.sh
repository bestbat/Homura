#!/bin/bash
NAME=Homura
VER=1.8
TODO=$(zenity --list --radiolist --height=50 --width 300 --title="$NAME $VER Installer" --text "What do you want to do?" --hide-header --column "$NAME" --column "Item" FALSE "Install Homura" FALSE "Uninstall Homura")

if [[ $TODO == *"Install Homura"* ]]; then
mkdir /home/$USER/.local/share/$NAME
mkdir /home/$USER/.local/share/$NAME/Data
cd /home/$USER/.local/share/$NAME
curl -O https://vignette.wikia.nocookie.net/madoka/images/7/72/Homura_magical_outfit_1.png/revision/latest/top-crop/width/320/height/320?cb=20160821012353
mv 320?cb=20160821012353 /home/$USER/.local/share/$NAME/Data/$NAME.png
curl -O -L https://github.com/Alexander88207/$NAME/archive/$VER.tar.gz
tar -xf $VER.tar.gz
mv /home/$USER/.local/share/$NAME/$NAME-$VER/$NAME.sh /home/$USER/.local/share/$NAME/$NAME.sh
rm /home/$USER/.local/share/$NAME/$VER.tar.gz
rm -d -r /home/$USER/.local/share/$NAME/$NAME-$VER
mkdir -p /home/$USER/.local/share/applications
echo "[Desktop Entry]
Comment=
Exec=bash /home/$USER/.local/share/$NAME/$NAME.sh
Icon=/home/$USER/.local/share/Homura/Data/Homura.png
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
" >> /home/$USER/.local/share/applications/$NAME.desktop
fi

if [[ $TODO == *"Uninstall Homura"* ]]; then
UH=$(zenity --question --width 300 --title "Homura - Uninstallation - Warning" --text "Everything will be removed in connection with Homura, do you want continue?"; echo $?)
if [[ $UH == *"1"* ]]; then 
notify-send "Thats a good decesion :)"
fi

if [[ $UH == *"0"* ]]; then 
rm /home/$USER/.local/share/applications/$NAME.desktop
rm /home/$USER/Desktop/$NAME.desktop
rm -d -r /home/$USER/.local/share/$NAME
fi
fi
notify-send Done!
