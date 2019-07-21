#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="PWGOBSD"
TITLE="Welcome $USER :)"
MENU="What do you want to do?:"

OPTIONS=(1 "Install Steam"
         2 "Install Blizzard"
         3 "Install Origin"
         4 "Install UPlay"
         5 "Install Epic Games")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
cd /home/$USER
mkdir /home/$USER/Games
case $CHOICE in
        1)
mkdir /home/$USER/Games/Steam
curl -O https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
WINEPREFIX=/home/$USER/Games/Steam winetricks winxp # Fixes Steam-Chat problems & and some audio problems in UE games.
WINEPREFIX=/home/$USER/Games/Steam wine SteamSetup.exe
            ;;
2)
mkdir /home/$USER/Games/Blizzard
curl -O https://eu.battle.net/download/getInstaller?os=win&installer=Battle.net-Setup.exe
WINEPREFIX=/home/$USER/Games/Blizzard wine Battle.net-Setup.exe

esac
