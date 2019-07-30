#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=3
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Welcome $USER :)"
MENU="What do you want to do?:"

OPTIONS=(1 "Installation"
         2 "Launcher"
         3 "Uninstallation")
         
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
cd /home/$USER
case $CHOICE in

        1)
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=6
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Installation"
MENU="What do you want to install?:"

OPTIONS=(1 "Steam"
         2 "Blizzard"
         3 "Origin"
         4 "Uplay"
         5 "Teamspeak"
         6 "Clone Hero")

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
mkdir /home/$USER/Programs
case $CHOICE in

        1)
mkdir /home/$USER/Games/Steam
curl -O https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
WINEPREFIX=/home/$USER/Games/Steam winetricks winxp  # Fixes Steam-Chat problems & and some audio problems in UE games.
WINEPREFIX=/home/$USER/Games/Steam wine SteamSetup.exe
            ;;
            
        2)
mkdir /home/$USER/Games/Blizzard
curl -O http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enUS.exe
WINEPREFIX=/home/$USER/Games/Blizzard wine /home/$USER/Battle.net-Setup-enUS.exe
            ;;
        3)
mkdir /home/$USER/Games/Origin
curl -O https://origin-a.akamaihd.net/Origin-Client-Download/origin/live/OriginThinSetup.exe
WINEPREFIX=/home/$USER/Games/Origin wine /home/$USER/OriginThinSetup.exe
            ;;
        4)
mkdir /home/$USER/Games/Uplay      
curl -O https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UplayInstaller.exe
WINEPREFIX=/home/$USER/Games/Uplay wine /home/$USER/UplayInstaller.exe
            ;;
        5)
mkdir /home/$USER/Programs/Teamspeak
cd /home/$USER/Programs/Teamspeak
curl -O https://oc.magzu.net/owncloud/index.php/s/C5BmsWkNiedJNzV/download
unzip download
rm download
echo Done!
            ;;
        6)
mkdir /home/$USER/Games/Clone-Hero
cd /home/$USER/Games/Clone-Hero
curl -O http://dl.clonehero.net/clonehero-v.22.5/clonehero-win32.7z
7z x clonehero-win32.7z
echo Done!

esac
            ;;
        2)
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=6
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Launcher"
MENU="What do you want to launch?:"

OPTIONS=(1 "Steam"
         2 "Blizzard"
         3 "Origin"
         4 "Uplay"
         5 "Teamspeak"
         6 "Clone Hero")
         
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
cd /home/$USER
case $CHOICE in

        1)
WINEPREFIX=/home/$USER/Games/Steam wine /home/$USER/Games/Steam/drive_c/Program Files/Steam/Steam.exe
            ;;
        2)
WINEPREFIX=/home/$USER/Games/Blizzard wine /home/alexander/Games/Blizzard/drive_c/Program Files/Battle.net/Battle.net.exe          
            ;;
        3)  
echo origin is not working! should this invaild let me now            
            ;;
        4)  
WINEPREFIX=/home/$USER/Games/Uplay wine /home/$USER/Games/Uplay/drive_c/Program Files/Ubisoft/Ubisoft Game Launcher/Uplay.exe            
            ;;
        5)
WINEPREFIX=/home/$USER/Programs/Teamspeak wine "/home/$USER/Programs/Teamspeak/TeamSpeak 3 Client/ts3client_win32.exe"
            ;;
        6)
WINEPREFIX=/home/$USER/Games/Clone-Hero wine /home/$USER/Games/Clone-Hero/clonehero-win32/Clone Hero.exe

esac
            ;;
        3)
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=6
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Uninstallation"
MENU="What do you want to uninstall?:"

OPTIONS=(1 "Steam"
         2 "Blizzard"
         3 "Origin"
         4 "Uplay"
         5 "Teamspeak"
         6 "Clone Hero")
         
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
cd /home/$USER
case $CHOICE in

        1)
rm -d -r /home/$USER/Games/Steam
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Steam
echo done!
            ;;
        2)
rm -d -r /home/$USER/Games/Blizzard
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Battle.net
echo done!    
            ;;
        3)  
echo origin is not working! should this invaild let me now!         
            ;;
        4)  
rm -d -r /home/$USER/Games/Uplay
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Ubisoft   
echo done!           
            ;;
        5)
rm -d -r /home/$USER/Programs/Teamspeak
echo done!
            ;;
        6)
rm -d -r /home/$USER/Games/Clone-Hero
echo done!

esac
esac
