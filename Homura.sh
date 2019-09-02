#!/bin/bash
echo $'\033]30;Homura 1.4\007' 
SD=$(pwd)
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=7
BACKTITLE="Homura 1.4"
TITLE="Welcome $USER :)"
MENU="What do you want to do?"

OPTIONS=(1 "Installation"
         2 "Launcher"
         3 "Uninstallation"
         4 "Winetricks"
         5 "Run a executable in prefix"
         6 "Update"
         7 "Custom Prefixes")
         
CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
mkdir /home/$USER/Homura
cd /home/$USER/Homura
case $CHOICE in

        1)
#!/bin/bash
HEIGHT=18
WIDTH=40
CHOICE_HEIGHT=11
BACKTITLE="Homura 1.4"
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
         9 "itch"
        10 "GOG Galaxy"
        11 "League of Legends")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
cd /home/$USER
mkdir /home/$USER/Homura/Games
mkdir /home/$USER/Homura/Programs
case $CHOICE in

        1)
mkdir /home/$USER/Homura/Games/Steam
cd /home/$USER/Homura/Games/Steam
echo -e "\e[40;38;5;82mDownloading Steam\e[30;48;5;82m\e[0m"
curl -O https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Homura/Games/Steam winetricks winxp dotnet40
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Homura/Games/Steam wine /home/$USER/Homura/Games/Steam/SteamSetup.exe
rm /home/$USER/Homura/Games/Steam/SteamSetup.exe
            ;;
            
        2)
mkdir /home/$USER/Homura/Games/Blizzard
cd /home/$USER/Homura/Games/Blizzard
echo -e "\e[40;38;5;82mDownloading Blizzard\e[30;48;5;82m\e[0m"
curl -O http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enUS.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Homura/Games/Blizzard wine /home/$USER/Homura/Games/Blizzard/Battle.net-Setup-enUS.exe
rm /home/$USER/Homura/Games/Blizzard/Battle.net-Setup-enUS.exe
            ;;
        3)
mkdir /home/$USER/Homura/Games/Origin
cd /home/$USER/Homura/Games/Origin
echo -e "\e[40;38;5;82mDownloading Origin\e[30;48;5;82m\e[0m"
curl -O https://origin-a.akamaihd.net/Origin-Client-Download/origin/legacy/OriginThinSetup.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Homura/Games/Origin winetricks winxp
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Homura/Games/Origin wine /home/$USER/Homura/Games/Origin/OriginThinSetup.exe
rm /home/$USER/Homura/Games/Origin/OriginThinSetup.exe
            ;;
        4)
mkdir /home/$USER/Homura/Games/Uplay
cd /home/$USER/Homura/Games/Uplay
echo -e "\e[40;38;5;82mDownloading Uplay\e[30;48;5;82m\e[0m"
curl -O https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UplayInstaller.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Homura/Games/Uplay wine /home/$USER/Homura/Games/Uplay/UplayInstaller.exe
rm /home/$USER/Homura/Games/Uplay/UplayInstaller.exe
            ;;
        5)
mkdir /home/$USER/Homura/Programs/Teamspeak
cd /home/$USER/Homura/Programs/Teamspeak
echo -e "\e[40;38;5;82mDownloading Teamspeak\e[30;48;5;82m\e[0m"
curl -O http://alt.magzu.net/damn/dl/Teamspeak.zip
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
unzip Teamspeak.zip
rm Teamspeak.zip
echo -e "\e[40;38;5;82mUpdate to latest version\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Homura/Programs/Teamspeak wine "/home/$USER/Homura/Programs/Teamspeak/TeamSpeak 3 Client/update.exe"
            ;;
        6)
mkdir "/home/$USER/Homura/Games/Clone Hero"
cd "/home/$USER/Homura/Games/Clone Hero"
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
mkdir "/home/$USER/Homura/Games/Drakensang Online"
cd "/home/$USER/Homura/Games/Drakensang Online"
echo -e "\e[40;38;5;82mDownloading Drakensang Online\e[30;48;5;82m\e[0m"
curl -O https://drasaonline-481-dwl.bpsecure.com/applet/dro_setup.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/Homura/Games/Drakensang Online" wine "/home/$USER/Homura/Games/Drakensang Online/dro_setup.exe"
rm "/home/$USER/Homura/Games/Drakensang Online/dro_setup.exe"
            ;;
        8)
mkdir "/home/$USER/Homura/Games/Anarchy Online"
cd "/home/$USER/Homura/Games/Anarchy Online"
echo -e "\e[40;38;5;82mDownloading Anarchy Online\e[30;48;5;82m\e[0m"
curl -O http://update.anarchy-online.com/download/AO/AnarchyOnline_EP1.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/Homura/Games/Anarchy Online" winetricks winxp
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
zenity --info --width=260 --title="Anarchy Online" --text="Please let the installer create an shortcut or you will unable to start the launcher later."
WINEPREFIX="/home/$USER/Homura/Games/Anarchy Online" wine "/home/$USER/Homura/Games/Anarchy Online/AnarchyOnline_EP1.exe"
rm "/home/$USER/Homura/Games/Anarchy Online/AnarchyOnline_EP1.exe"
            ;;
        9)
mkdir /home/$USER/Homura/Games/itch
cd /home/$USER/Homura/Games/itch
echo -e "\e[40;38;5;82mDownloading itch\e[30;48;5;82m\e[0m"
curl -L -O http://nuts.itch.zone/download/windows
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/Homura/Games/itch wine /home/$USER/Homura/Games/itch/windows
rm /home/$USER/Homura/Games/itch/windows
            ;;
        10)
mkdir "/home/$USER/Homura/Games/GOG Galaxy"
cd "/home/$USER/Homura/Games/GOG Galaxy"
echo -e "\e[40;38;5;82mDownloading GOG Galaxy\e[30;48;5;82m\e[0m"
curl -O -L https://content-system.gog.com/open_link/download?path=/open/galaxy/client/setup_galaxy_1.2.57.74.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/Homura/Games/GOG Galaxy" wine "/home/$USER/Homura/Games/GOG Galaxy/setup_galaxy_1.2.57.74.exe"
rm "/home/$USER/Homura/Games/GOG Galaxy/setup_galaxy_1.2.57.74.exe"
            ;;
        11)
mkdir "/home/$USER/Homura/Games/League of Legends"
cd "/home/$USER/Homura/Games/League of Legends"
echo -e "\e[40;38;5;82mDownloading League of Legends\e[30;48;5;82m\e[0m"
curl -O http://alt.magzu.net/damn/dl/League%20of%20Legends.tar.xz
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
tar -xf League%20of%20Legends.tar.xz
rm League%20of%20Legends.tar.xz

esac
notify-send Done!
cd $SD
bash Homura.sh
            ;;
        2)
#!/bin/bash
HEIGHT=18
WIDTH=40
CHOICE_HEIGHT=11
BACKTITLE="Homura 1.4"
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
         9 "itch"
        10 "GOG Galaxy"
        11 "League of Legends")

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
WINEPREFIX=/home/$USER/Homura/Games/Steam wine "/home/$USER/Homura/Games/Steam/drive_c/Program Files/Steam/Steam.exe" -no-cef-sandbox
            ;;
        2)
echo $'\033]30;Blizzard\007'        
WINEPREFIX=/home/$USER/Homura/Games/Blizzard wine "/home/$USER/Homura/Games/Blizzard/drive_c/Program Files/Battle.net/Battle.net.exe"          
            ;;
        3)
echo $'\033]30;Origin\007'        
WINEPREFIX=/home/$USER/Homura/Games/Origin wine "/home/$USER/Homura/Games/Origin/drive_c/Program Files/Origin/Origin.exe"             
            ;;
        4)  
echo $'\033]30;Uplay\007' 
WINEPREFIX=/home/$USER/Homura/Games/Uplay wine "/home/$USER/Homura/Games/Uplay/drive_c/Program Files/Ubisoft/Ubisoft Game Launcher/Uplay.exe"            
            ;;
        5)
echo $'\033]30;Teamspeak\007' 
WINEPREFIX=/home/$USER/Homura/Programs/Teamspeak wine "/home/$USER/Homura/Programs/Teamspeak/TeamSpeak 3 Client/ts3client_win32.exe"
            ;;
        6)
echo $'\033]30;Clone Hero\007' 
WINEPREFIX="/home/$USER/Homura/Games/Clone Hero" wine "/home/$USER/Homura/Games/Clone Hero/clonehero-win32/Clone Hero.exe"
            ;;
        7)
echo $'\033]30;Drakensang Online\007' 
WINEPREFIX="/home/$USER/Homura/Games/Drakensang Online/" wine "/home/$USER/Homura/Games/Drakensang Online/drive_c/Program Files/Drakensang Online/thinclient.exe"  
            ;;
        8)
echo $'\033]30;Anarchy Online\007' 
env WINEPREFIX="/home/$USER/Homura/Games/Anarchy Online" wine C:\\windows\\command\\start.exe /Unix /home/$USER/Homura/Games/Anarchy\ Online/dosdevices/c:/ProgramData/Microsoft/Windows/Start\ Menu/Programs/Anarchy\ Online/Anarchy\ Online.lnk
            ;;
        9)
echo $'\033]30;itch\007' 
VERSION=25.4.0
WINEPREFIX=/home/$USER/Homura/Games/itch wine "/home/$USER/.wine/drive_c/users/$USER/Local Settings/Application Data/itch/app-$VERSION/itch.exe"
            ;;
        10)
echo $'\033]30;GOG Galaxy\007' 
WINEPREFIX="/home/$USER/Homura/Games/GOG Galaxy" wine "/home/$USER/Homura/Games/GOG Galaxy/drive_c/Program Files/GOG Galaxy/GalaxyClient.exe" /runWithoutUpdating /deelevated   
;;
        11)
echo $'\033]30;League of Legends\007' 
WINEPREFIX="/home/$USER/Homura/Games/League of Legends" wine "/home/$USER/Homura/Games/League of Legends/League of Legends/LeagueClient.exe"

esac
cd $SD
bash Homura.sh
            ;;
        3)
#!/bin/bash
HEIGHT=18
WIDTH=40
CHOICE_HEIGHT=11
BACKTITLE="Homura 1.4"
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
         9 "itch"
        10 "GOG Galaxy"
        11 "League of Legends")
         
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
rm -d -r /home/$USER/Homura/Games/Steam
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Steam
rm /home/$USER/Desktop/Steam.desktop
            ;;
        2)
rm -d -r /home/$USER/Homura/Games/Blizzard
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Battle.net
rm -d -r /home/$USER/Desktop/Battle.net.desktop
            ;;
        3)  
rm -d -r /home/$USER/Homura/Games/Origin
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Origin
rm /home/$USER/Desktop/Origin.desktop
            ;;
        4)  
rm -d -r /home/$USER/Homura/Games/Uplay
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Ubisoft
rm /home/$USER/Desktop/Uplay.desktop
rm /home/$USER/Desktop/Uplay.lnk               
            ;;
        5)
rm -d -r /home/$USER/Homura/Programs/Teamspeak
            ;;
        6)
rm -d -r "/home/$USER/Homura/Games/Clone Hero"
            ;;
        7)
rm -d -r "/home/$USER/Homura/Games/Drakensang Online"
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/Drakensang Online"
rm "/home/$USER/Desktop/Drakensang Online.desktop"
rm "/home/$USER/Desktop/Drakensang Online.lnk"
            ;;
        8)
rm -d -r "/home/$USER/Homura/Games/Anarchy Online"
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/Anarchy Online"
rm "/home/$USER/Desktop/Anarchy Online.desktop"
            ;;
        9)
rm -d -r /home/$USER/Homura/Games/itch
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/Itch Corp"
            ;;
       10)
rm -d -r "/home/$USER/Homura/Games/GOG Galaxy"
rm -d -r /home/$USER/.local/share/applications/wine/Programs/GOG.com
rm -d -r "/home/$USER/Desktop/GOG Galaxy.desktop"
;;
       11)
rm -d -r "/home/$USER/Homura/Games/League of Legends"

esac
notify-send Done!
cd $SD
bash Homura.sh
            ;;
        4)
#!/bin/bash
HEIGHT=18
WIDTH=50
CHOICE_HEIGHT=11
BACKTITLE="Homura 1.4"
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
         9 "itch"
        10 "GOG Galaxy"
        11 "League of Legends")

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
WINEPREFIX=/home/$USER/Homura/Games/Steam winetricks
            ;;
        2)
WINEPREFIX=/home/$USER/Homura/Games/Blizzard winetricks
            ;;
        3)
WINEPREFIX=/home/$USER/Homura/Games/Origin winetricks
            ;;
        4)
WINEPREFIX=/home/$USER/Homura/Games/Uplay winetricks
            ;;
        5)
WINEPREFIX=/home/$USER/Homura/Programs/Teamspeak winetricks
            ;;
        6)
WINEPREFIX="/home/$USER/Homura/Games/Clone Hero" winetricks
            ;;
        7)
WINEPREFIX="/home/$USER/Homura/Games/Drakensang Online" winetricks
            ;;
        8)
WINEPREFIX="/home/$USER/Homura/Games/Anarchy Online" winetricks
            ;;
        9)
WINEPREFIX=/home/$USER/Homura/Games/itch winetricks
            ;;
       10)
WINEPREFIX="/home/$USER/Homura/Games/GOG Galaxy" winetricks
            ;;
       11)
WINEPREFIX="/home/$USER/Homura/Games/League of Legends" winetricks

esac
cd $SD
bash Homura.sh
            ;;
        5)
#!/bin/bash
HEIGHT=18
WIDTH=55
CHOICE_HEIGHT=11
BACKTITLE="Homura 1.4"
TITLE="Run a executable in prefix"
MENU="In what prefix do you want to open your executable?"

OPTIONS=(1 "Steam"
         2 "Blizzard"
         3 "Origin"
         4 "Uplay"
         5 "Teamspeak"
         6 "Clone Hero"
         7 "Drakensang Online"
         8 "Anarchy Online"
         9 "itch"
        10 "GOG Galaxy"
        11 "League of Legends")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
EXECUTABLE="$(zenity --file-selection --title="Choose your executable")"
case $CHOICE in

        1)
WINEPREFIX=/home/$USER/Homura/Games/Steam wine "$EXECUTABLE"
            ;;
        2)
WINEPREFIX=/home/$USER/Homura/Games/Blizzard wine "$EXECUTABLE"
            ;;
        3)
WINEPREFIX=/home/$USER/Homura/Games/Origin wine "$EXECUTABLE"
            ;;
        4)
WINEPREFIX=/home/$USER/Homura/Games/Uplay wine "$EXECUTABLE"
            ;;
        5)
WINEPREFIX=/home/$USER/Homura/Programs/Teamspeak wine "$EXECUTABLE"
            ;;
        6)
WINEPREFIX="/home/$USER/Homura/Games/Clone Hero" wine "$EXECUTABLE"
            ;;
        7)
WINEPREFIX="/home/$USER/Homura/Games/Drakensang Online" wine "$EXECUTABLE"
            ;;
        8)
WINEPREFIX="/home/$USER/Homura/Games/Anarchy Online" wine "$EXECUTABLE"
            ;;
        9)
WINEPREFIX=/home/$USER/Homura/Games/itch wine "$EXECUTABLE"
            ;;
       10)
WINEPREFIX="/home/$USER/Homura/Games/GOG Galaxy" wine "$EXECUTABLE"
            ;;
       11)
WINEPREFIX="/home/$USER/Homura/Games/League of Legends" wine "$EXECUTABLE"

esac
cd $SD
bash Homura.sh
            ;;
        6)
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=1
BACKTITLE="Homura 1.4"
TITLE="Update"
MENU="What do you want to update?"

OPTIONS=(1 "Teamspeak")
         
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
WINEPREFIX=/home/$USER/Homura/Programs/Teamspeak wine "/home/$USER/Homura/Programs/Teamspeak/TeamSpeak 3 Client/update.exe"
killall wine

esac
notify-send Done!
cd $SD
bash Homura.sh
             ;;
        7)
#!/bin/bash
HEIGHT=15
WIDTH=60
CHOICE_HEIGHT=4
BACKTITLE="Homura 1.4"
TITLE="Custom Prefixes"
MENU="What do you want to do?"

OPTIONS=(1 "Create a custom prefix"
         2 "Launch a custom prefix"
         3 "Change launch executable of a custom prefix"
         4 "Remove a custom prefix")

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
PREFIXNAME=$(zenity --title="Create a custom prefix" --text "How your prefix should be called?" --entry --width=260) 
mkdir "/home/$USER/Homura/Custom Prefixes"
mkdir "/home/$USER/Homura/Custom Prefixes/$PREFIXNAME"
cd "/home/$USER/Homura/Custom Prefixes/$PREFIXNAME"
zenity --info --width=260 --title="Create a custom prefix" --text="Now you need to select the executable that do you want to use in this prefix."
EXECUTABLE="$(zenity --file-selection --title="Choose your executable")"
echo "WINEPREFIX='/home/$USER/Homura/Custom Prefixes/$PREFIXNAME' wine '$EXECUTABLE'" >> start.sh
            ;;
        2)
PREFIXNAME=$(zenity  --file-selection --title="Choose a prefix" --directory --filename=""/home/$USER/Homura/Custom Prefixes"")
bash "$PREFIXNAME/start.sh"
            ;;
        3)
PREFIXNAME=$(zenity  --file-selection --title="Choose a prefix" --directory --filename=""/home/$USER/Homura/Custom Prefixes"")
cd "/home/$USER/Homura/Custom Prefixes/$PREFIXNAME"
zenity --info --width=260 --title="Change the launch executable of a custom prefix" --text="Now you need to select the executable that do you want to use in this prefix."
zenity --info --width=260 --title="Change the launch executable of a custom prefix" --text="Note: If you gonna add an executable with a space in the name then you need to fix this later in /home/$USER/Homura/Custom Prefixes/$PREFIXNAME/start.sh"
EXECUTABLE="$(zenity --file-selection --title="Choose your executable")"
rm start.sh
echo "WINEPREFIX='/home/$USER/Homura/Custom Prefixes/$PREFIXNAME' wine '$EXECUTABLE'" >> start.sh
            ;;
        4)
PREFIXNAME=$(zenity  --file-selection --title="Choose a prefix" --directory)
rm -r -d "$PREFIXNAME"
esac
notify-send Done!
cd $SD
bash Homura.sh
esac
