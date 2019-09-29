#!/bin/bash
NAME=Homura
VER=2.1.2
NDIR=/home/$USER/.local/share/$NAME
DDIR=$NDIR/Data
GITACC=The-Homura-Project
TODO=$(zenity --list --radiolist --height=50 --width 300 --title="$NAME $VER Installer" --text "What do you want to do?" --hide-header --column "$NAME" --column "Item" FALSE "Install Homura" FALSE "Uninstall Homura")

if [[ $TODO == *"Install Homura"* ]]; then
mkdir $NDIR
mkdir $DDIR
cd $NDIR
curl -O https://vignette.wikia.nocookie.net/madoka/images/7/72/Homura_magical_outfit_1.png/revision/latest/top-crop/width/320/height/320?cb=20160821012353
mv 320?cb=20160821012353 $DDIR/$NAME.png
curl -O -L https://github.com/$GITACC/$NAME/archive/$VER.tar.gz
tar -xf $VER.tar.gz
mv $NDIR/$NAME-$VER/$NAME.sh $NDIR/$NAME.sh
rm $NDIR/$VER.tar.gz
rm -d -r $NDIR/$NAME-$VER
mkdir -p /home/$USER/.local/share/applications
echo "[Desktop Entry]
Comment=
Exec=bash $NDIR/$NAME.sh
Icon=$DDIR/$NAME.png
Categories=Game;
Name=$NAME
StartupNotify=false
Terminal=false
TerminalOptions=
Type=Application
X-DBUS-ServiceName=
X-DBUS-StartupType=
X-KDE-SubstituteUID=false
X-KDE-Username=
" >> /home/$USER/.local/share/applications/$NAME.desktop
notify-send "The installation is done, have fun!"
fi

if [[ $TODO == *"Uninstall Homura"* ]]; then
UH=$(zenity --question --width 300 --title "$NAME - Uninstallation - Warning" --text "Everything will be removed in connection with $NAME, do you want continue?"; echo $?)
if [[ $UH == *"1"* ]]; then 
notify-send "Thats a good decesion :)"
fi

if [[ $UH == *"0"* ]]; then 
rm /home/$USER/.local/share/applications/$NAME.desktop
rm /home/$USER/Desktop/$NAME.desktop
rm -d -r $NDIR
notify-send -i face-sad "The uninstallation is done, sad to see you go."
fi
fi
