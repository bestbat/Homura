#!/bin/bash
SD=$(pwd)
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Welcome $USER :)"
MENU="What do you want to do?"

OPTIONS=(1 "Installation"
         2 "Launcher"
         3 "Uninstallation"
         4 "Winetricks")
         
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
CHOICE_HEIGHT=9
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Installation"
MENU="What do you want to install?"

OPTIONS=(1 "Steam"
         2 "Blizzard"
         3 "Origin"
         4 "Uplay"
         5 "Teamspeak"
         6 "Clone Hero"
         7 "Drakensang Online"
         8 "Anarchy Online"
         9 "itch")

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
cd /home/$USER/Games/Steam
echo -e "\e[40;38;5;82mDownloading Steam\e[30;48;5;82m\e[0m"
curl -O https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Games/Steam winetricks winxp dotnet40
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Games/Steam wine /home/$USER/Games/Steam/SteamSetup.exe
            ;;
            
        2)
mkdir /home/$USER/Games/Blizzard
cd /home/$USER/Games/Blizzard
echo -e "\e[40;38;5;82mDownloading Blizzard\e[30;48;5;82m\e[0m"
curl -O http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enUS.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Games/Blizzard wine /home/$USER/Games/Blizzard/Battle.net-Setup-enUS.exe
            ;;
        3)
mkdir /home/$USER/Games/Origin
cd /home/$USER/Games/Origin
echo -e "\e[40;38;5;82mDownloading Origin\e[30;48;5;82m\e[0m"
curl -O https://origin-a.akamaihd.net/Origin-Client-Download/origin/legacy/OriginThinSetup.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Games/Origin winetricks winxp
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Games/Origin wine /home/$USER/Games/Origin/OriginThinSetup.exe
            ;;
        4)
mkdir /home/$USER/Games/Uplay
cd /home/$USER/Games/Uplay
echo -e "\e[40;38;5;82mDownloading Uplay\e[30;48;5;82m\e[0m"
curl -O https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UplayInstaller.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Games/Uplay wine /home/$USER/Games/Uplay/UplayInstaller.exe
            ;;
        5)
mkdir /home/$USER/Programs/Teamspeak
cd /home/$USER/Programs/Teamspeak
echo -e "\e[40;38;5;82mDownloading Teamspeak\e[30;48;5;82m\e[0m"
curl -O https://oc.magzu.net/owncloud/index.php/s/C5BmsWkNiedJNzV/download
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
unzip download
rm download
            ;;
        6)
mkdir "/home/$USER/Games/Clone Hero"
cd "/home/$USER/Games/Clone Hero"
echo -e "\e[40;38;5;82mDownloading Clone Hero\e[30;48;5;82m\e[0m"
curl -O http://dl.clonehero.net/clonehero-v.22.5/clonehero-win32.7z
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
7z x clonehero-win32.7z
rm clonehero-win32.7z
echo -e "\e[40;38;5;82mApplying fix\e[30;48;5;82m\e[0m"
cd clonehero-win32
curl -O http://alt.magzu.net/dl/settings.ini
            ;;
        7)
mkdir "/home/$USER/Games/Drakensang Online"
cd "/home/$USER/Games/Drakensang Online"
echo -e "\e[40;38;5;82mDownloading Drakensang Online\e[30;48;5;82m\e[0m"
curl -O https://drasaonline-481-dwl.bpsecure.com/applet/dro_setup.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/Games/Drakensang Online" wine "/home/$USER/Games/Drakensang Online/dro_setup.exe"
            ;;
        8)
mkdir "/home/$USER/Games/Anarchy Online"
cd "/home/$USER/Games/Anarchy Online"
echo -e "\e[40;38;5;82mDownloading Anarchy Online\e[30;48;5;82m\e[0m"
curl -O http://update.anarchy-online.com/download/AO/AnarchyOnline_EP1.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/Games/Anarchy Online" winetricks winxp
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/Games/Anarchy Online" wine "/home/$USER/Games/Anarchy Online/AnarchyOnline_EP1.exe"
            ;;
        9)
mkdir /home/$USER/Games/itch
cd /home/$USER/Games/itch
echo -e "\e[40;38;5;82mDownloading itch\e[30;48;5;82m\e[0m"
curl -L -O http://nuts.itch.zone/download/windows
echo -e "\e[40;38;5;82mInstalling itch\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Games/itch wine /home/$USER/Games/itch/windows

esac
notify-send Done!
cd $SD
bash PWGOFBSD.sh
            ;;
        2)
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=9
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Launcher"
MENU="What do you want to launch?"

OPTIONS=(1 "Steam"
         2 "Blizzard"
         3 "Origin"
         4 "Uplay"
         5 "Teamspeak"
         6 "Clone Hero"
         7 "Drakensang Online"
         8 "Anarchy Online"
         9 "itch")

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
echo $'\033]30;Steam\007'        
WINEPREFIX=/home/$USER/Games/Steam wine "/home/$USER/Games/Steam/drive_c/Program Files/Steam/Steam.exe" -no-cef-sandbox
            ;;
        2)
echo $'\033]30;Blizzard\007'        
WINEPREFIX=/home/$USER/Games/Blizzard wine "/home/alexander/Games/Blizzard/drive_c/Program Files/Battle.net/Battle.net.exe"          
            ;;
        3)
echo $'\033]30;Origin\007'        
WINEPREFIX=/home/$USER/Games/Origin wine "/home/$USER/Games/Origin/drive_c/Program Files/Origin/Origin.exe"             
            ;;
        4)  
echo $'\033]30;Uplay\007' 
WINEPREFIX=/home/$USER/Games/Uplay wine "/home/$USER/Games/Uplay/drive_c/Program Files/Ubisoft/Ubisoft Game Launcher/Uplay.exe"            
            ;;
        5)
echo $'\033]30;Teamspeak\007' 
WINEPREFIX=/home/$USER/Programs/Teamspeak wine "/home/$USER/Programs/Teamspeak/TeamSpeak 3 Client/ts3client_win32.exe"
            ;;
        6)
echo $'\033]30;Clone Hero\007' 
WINEPREFIX="/home/$USER/Games/Clone Hero" wine "/home/$USER/Games/Clone Hero/clonehero-win32/Clone Hero.exe"
            ;;
        7)
echo $'\033]30;Drakensang Online\007' 
WINEPREFIX="/home/$USER/Games/Drakensang Online/" wine "/home/$USER/Games/Drakensang Online/drive_c/Program Files/Drakensang Online/thinclient.exe"  
            ;;
        8)
echo $'\033]30;Anarchy Online\007' 
env WINEPREFIX="/home/$USER/Games/Anarchy Online" wine C:\\windows\\command\\start.exe /Unix /home/$USER/Games/Anarchy\ Online/dosdevices/c:/ProgramData/Microsoft/Windows/Start\ Menu/Programs/Anarchy\ Online/Anarchy\ Online.lnk
            ;;
        9)
echo $'\033]30;itch\007' 
VERSION=25.4.0
WINEPREFIX=/home/$USER/Games/itch wine "/home/$USER/.wine/drive_c/users/$USER/Local Settings/Application Data/itch/app-$VERSION/itch.exe"
esac
cd $SD
bash PWGOFBSD.sh
            ;;
        3)
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=9
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Uninstallation"
MENU="What do you want to uninstall?"

OPTIONS=(1 "Steam"
         2 "Blizzard"
         3 "Origin"
         4 "Uplay"
         5 "Teamspeak"
         6 "Clone Hero"
         7 "Drakensang Online"
         8 "Anarchy Online"
         9 "itch")
         
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
rm /home/$USER/Desktop/Steam.desktop
            ;;
        2)
rm -d -r /home/$USER/Games/Blizzard
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Battle.net
rm -d -r /home/$USER/Desktop/Battle.net.desktop
            ;;
        3)  
rm -d -r /home/$USER/Games/Origin
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Origin
rm /home/$USER/Desktop/Origin.desktop
            ;;
        4)  
rm -d -r /home/$USER/Games/Uplay
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Ubisoft
rm /home/$USER/Desktop/Uplay.desktop
rm /home/$USER/Desktop/Uplay.lnk               
            ;;
        5)
rm -d -r /home/$USER/Programs/Teamspeak
            ;;
        6)
rm -d -r "/home/$USER/Games/Clone Hero"
            ;;
        7)
rm -d -r "/home/$USER/Games/Drakensang Online"
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/Drakensang Online"
rm "/home/$USER/Desktop/Drakensang Online.desktop"
rm "/home/$USER/Desktop/Drakensang Online.lnk"
            ;;
        8)
rm -d -r "/home/$USER/Games/Anarchy Online"
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/Anarchy Online"
rm "/home/$USER/Desktop/Anarchy Online.desktop"
            ;;
        9)
rm -d -r /home/$USER/Games/itch
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/Itch Corp"

esac
notify-send Done!
cd $SD
bash PWGOFBSD.sh
            ;;
        4)
#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=9
BACKTITLE="PWGOFBSD - Play Windows Games On FreeBSD"
TITLE="Winetricks"
MENU="In what prefix do you want to open winetricks?"

OPTIONS=(1 "Steam"
         2 "Blizzard"
         3 "Origin"
         4 "Uplay"
         5 "Teamspeak"
         6 "Clone Hero"
         7 "Drakensang Online"
         8 "Anarchy Online"
         9 "itch")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in

        1)
WINEPREFIX=/home/$USER/Games/Steam winetricks
            ;;
        2)
WINEPREFIX=/home/$USER/Games/Blizzard winetricks
            ;;
        3)
WINEPREFIX=/home/$USER/Games/Origin winetricks
            ;;
        4)
WINEPREFIX=/home/$USER/Games/Uplay winetricks
            ;;
        5)
WINEPREFIX=/home/$USER/Games/Teamspeak winetricks
            ;;
        6)
WINEPREFIX="/home/$USER/Games/Clone Hero" winetricks
            ;;
        7)
WINEPREFIX="/home/$USER/Games/Drakensang Online" winetricks
            ;;
        8)
WINEPREFIX="/home/$USER/Games/Anarchy Online" winetricks
            ;;
        9)
WINEPREFIX=/home/$USER/Games/itch winetricks

esac
cd $SD
bash PWGOFBSD.sh
esac
