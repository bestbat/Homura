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
         4 "Install Uplay")

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
WINEPREFIX=/home/$USER/Games/Steam winetricks winxp  # Fixes Steam-Chat problems & and some audio problems in UE games.
WINEPREFIX=/home/$USER/Games/Steam winetricks corefonts # Better fonts.
WINEPREFIX=/home/$USER/Games/Steam wine SteamSetup.exe
            ;;
            
        2)
mkdir /home/$USER/Games/Blizzard
curl -O http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enUS.exe
WINEPREFIX=/home/$USER/Games/Blizzard wine /home/$USER/Battle.net-Setup-enUS.exe
            ;;
        3)
echo sorry currently borked
#mkdir /home/$USER/Games/Origin
#curl -O https://origin-a.akamaihd.net/Origin-Client-Download/origin/live/OriginThinSetup.exe
#WINEPREFIX=/home/$USER/Games/Origin wine /home/$USER/OriginThinSetup.exe
            ;;
        4)
mkdir /home/$USER/Games/Uplay
WINEPREFIX=/home/$USER/Games/Uplay winetricks corefonts # Fixes the blank window at start.       
curl -O https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UplayInstaller.exe
WINEPREFIX=/home/$USER/Games/Uplay wine /home/$USER/UplayInstaller.exe

esac
