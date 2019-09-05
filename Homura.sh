#!/bin/bash
NAME=Homura
VER=1.4
SD=$(pwd)
clear
echo -e "\e[3;5;0;31mGPU Info OpenGL:\e[30;48;5;82m\e[0m" && glxinfo | grep OpenGL
echo -e "\e[3;5;0;31mGPU Info Vulkan:\e[30;48;5;82m\e[0m" && vulkaninfo | grep "GPU id"

TODO=$(zenity --list --radiolist --height=240 --width 300 --title="$NAME $VER" --text "What do you want to do?" --hide-header --column "$NAME" --column "Item" FALSE "Installation" FALSE "Launcher" FALSE "Uninstallation" FALSE "Winetricks" FALSE "Run a executable in prefix" FALSE "Update" FALSE "Exit")

if [[ $TODO == *"Installation"* ]]; then

INST=$(zenity --list --radiolist --height=405 --width 300 --title="$NAME $VER - $TODO" --text "What do you want to install?" --hide-header --column "$NAME $VER" --column "Item" FALSE "Steam" FALSE "Blizzard" FALSE "Origin" FALSE "Uplay" FALSE "Teamspeak" FALSE "Clone Hero" FALSE "Drakensang Online" FALSE "Anarchy Online" FALSE "itch" FALSE "GOG Galaxy" FALSE "League of Legends" FALSE "Custom Prefix" FALSE "Extras for games")

if [[ $INST == *"Steam"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p /home/$USER/$NAME/Games/$INST
cd /home/$USER/$NAME/Games/$INST
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O https://steamcdn-a.akamaihd.net/client/installer/SteamSetup.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/$NAME/Games/$INST winetricks winxp dotnet40
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/$NAME/Games/$INST wine /home/$USER/$NAME/Games/Steam/SteamSetup.exe
rm /home/$USER/$NAME/Games/$INST/SteamSetup.exe
fi

if [[ $INST == *"Blizzard"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p /home/$USER/$NAME/Games/$INST
cd /home/$USER/$NAME/Games/$INST
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enUS.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/$NAME/Games/$INST wine /home/$USER/$NAME/Games/Blizzard/Battle.net-Setup-enUS.exe
rm /home/$USER/$NAME/Games/$INST/Battle.net-Setup-enUS.exe
fi

if [[ $INST == *"Origin"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p /home/$USER/$NAME/Games/$INST
cd /home/$USER/$NAME/Games/$INST
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O https://origin-a.akamaihd.net/Origin-Client-Download/origin/legacy/OriginThinSetup.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/$NAME/Games/Origin winetricks winxp
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/$NAME/Games/$INST wine /home/$USER/$NAME/Games/$INST/OriginThinSetup.exe
rm /home/$USER/$NAME/Games/$INST/OriginThinSetup.exe
fi

if [[ $INST == *"Uplay"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p /home/$USER/$NAME/Games/$INST
cd /home/$USER/$NAME/Games/$INST
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UplayInstaller.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/$NAME/Games/$INST wine /home/$USER/$NAME/Games/$INST/UplayInstaller.exe
rm /home/$USER/$NAME/Games/$INST/UplayInstaller.exe
fi

if [[ $INST == *"Teamspeak"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p /home/$USER/$NAME/Programs/$INST
cd /home/$USER/$NAME/Programs/$INST
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O http://alt.magzu.net/damn/dl/Teamspeak.zip
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
unzip Teamspeak.zip
rm Teamspeak.zip
echo -e "\e[40;38;5;82mUpdate to latest version\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/$NAME/Programs/Teamspeak wine "/home/$USER/$NAME/Programs/Teamspeak/TeamSpeak 3 Client/update.exe"
fi

if [[ $INST == *"Clone Hero"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p "/home/$USER/$NAME/Games/$INST"
cd "/home/$USER/$NAME/Games/$INST"
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O http://dl.clonehero.net/clonehero-v.22.5/clonehero-win32.7z
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
7z x clonehero-win32.7z
rm clonehero-win32.7z
echo -e "\e[40;38;5;82mApplying fix\e[30;48;5;82m\e[0m"
cd clonehero-win32
curl -O http://alt.magzu.net/dl/settings.ini
fi

if [[ $INST == *"Drakensang Online"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p "/home/$USER/$NAME/Games/$INST"
cd "/home/$USER/$NAME/Games/$INST"
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O https://drasaonline-481-dwl.bpsecure.com/applet/dro_setup.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/$NAME/Games/Drakensang Online" wine "/home/$USER/$NAME/Games/Drakensang Online/dro_setup.exe"
rm "/home/$USER/$NAME/Games/Drakensang Online/dro_setup.exe"
fi

if [[ $INST == *"Anarchy Online"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p "/home/$USER/$NAME/Games/$INST"
cd "/home/$USER/$NAME/Games/$INST"
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O http://update.anarchy-online.com/download/AO/AnarchyOnline_EP1.exe
echo -e "\e[40;38;5;82mSetup prefix\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/$NAME/Games/Anarchy Online" winetricks winxp
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
zenity --info --width=260 --title="$NAME $VER - Installation of Anarchy Online" --text="Please let the installer create an shortcut or you will unable to start the launcher later."
WINEPREFIX="/home/$USER/$NAME/Games/Anarchy Online" wine "/home/$USER/$NAME/Games/Anarchy Online/AnarchyOnline_EP1.exe"
rm "/home/$USER/$NAME/Games/Anarchy Online/AnarchyOnline_EP1.exe"
fi

if [[ $INST == *"itch"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p /home/$USER/$NAME/Games/$INST
cd /home/$USER/$NAME/Games/$INST
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -L -O http://nuts.itch.zone/download/windows
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX=/home/$USER/$NAME/Games/itch wine /home/$USER/$NAME/Games/itch/windows
rm /home/$USER/$NAME/Games/itch/windows
fi

if [[ $INST == *"GOG Galaxy"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p "/home/$USER/$NAME/Games/$INST"
cd "/home/$USER/$NAME/Games/$INST"
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O -L https://content-system.gog.com/open_link/download?path=/open/galaxy/client/setup_galaxy_1.2.57.74.exe
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
WINEPREFIX="/home/$USER/$NAME/Games/GOG Galaxy" wine "/home/$USER/$NAME/Games/GOG Galaxy/setup_galaxy_1.2.57.74.exe"
rm "/home/$USER/$NAME/Games/GOG Galaxy/setup_galaxy_1.2.57.74.exe"
fi

if [[ $INST == *"League of Legends"* ]]; then
echo $'\033]30;$NAME $VER - Installation of $INST\007'
mkdir -p "/home/$USER/$NAME/Games/$INST"
cd "/home/$USER/$NAME/Games/$INST"
echo -e "\e[40;38;5;82mDownloading $INST\e[30;48;5;82m\e[0m"
curl -O http://alt.magzu.net/damn/dl/League%20of%20Legends.tar.xz
echo -e "\e[40;38;5;82mStarting installer\e[30;48;5;82m\e[0m"
tar -xf League%20of%20Legends.tar.xz
rm League%20of%20Legends.tar.xz
fi

if [[ $INST == *"Custom Prefix"* ]]; then
echo $'\033]30;Installation of $INST\007'
PREFIXNAME=$(zenity --title="Create a custom prefix" --text "How your prefix should be called?" --entry --width=260) 
mkdir -p "/home/$USER/$NAME/Custom Prefixes"
mkdir -p "/home/$USER/$NAME/Custom Prefixes/$PREFIXNAME"
cd "/home/$USER/$NAME/Custom Prefixes/$PREFIXNAME"
zenity --info --width=260 --title="Create a custom prefix" --text="Now you need to select the executable that do you want to use in this prefix."
EXECUTABLE="$(zenity --file-selection --title="Choose your executable")"
ENV=$(zenity --title="Environment variable" --text "Do you need an environment variable for your executable? (for example DXVK_HUD=1) if not leave it blank." --entry --width=260) 
SPM=$(zenity --title="Environment variable" --text "Do you need an startparameter for your executable? (for example -console) if not leave it blank." --entry --width=260) 
echo "$ENV WINEPREFIX='/home/$USER/$NAME/Custom Prefixes/$PREFIXNAME' wine '$EXECUTABLE' $SPM" >> start.sh
fi

if [[ $INST == *"Extras for games"* ]]; then
EXFG=$(zenity --list --radiolist --height=100 --width=310  --title="$NAME $VER - $INST" --text "What extra do you want to install?" --hide-header --column "$NAME $VER" --column "Item" FALSE "Torchlight German Patch")

if [[ $EXFG == *"Torchlight German Patch"* ]]; then
TGPH=$(zenity --list --radiolist --height=100 --width=360 --title="$NAME $VER $EXFG" --text "What version?" --hide-header --column "$NAME $VER" --column "Item" FALSE "German Patch V3 (Steam-Edition)" FALSE "German Patch V5 (GOG/Epic-Edition)")

cd /home/$USER/$NAME

if [[ $TGPH == *"German Patch V3 (Steam-Edition)"* ]]; then
curl -O http://alt.magzu.net/damn/dl/Torchlight_GerPatchV3_Steam.zip
unzip Torchlight_GerPatchV3_Steam.zip
WINEPREFIX=/home/$USER/$NAME/Games/Steam wine /home/$USER/$NAME/Torchlight_GerPatchV3_Steam.exe
rm Torchlight_GerPatchV3_Steam.exe
rm Torchlight_GerPatchV3_Steam.zip
fi

if [[ $TGPH == *"German Patch V5 (GOG/Epic-Edition)"* ]]; then
curl -O http://alt.magzu.net/damn/dl/Torchlight_GerPatchV5_GOGEPIC.zip
unzip Torchlight_GerPatchV5_GOGEPIC.zip
WINEPREFIX="/home/$USER/$NAME/Games/GOG Galaxy" wine /home/$USER/$NAME/Torchlight_GerPatchV5_GOGEPIC.exe
rm Torchlight_GerPatchV5_GOGEPIC.exe
rm Torchlight_GerPatchV5_GOGEPIC.zip
fi
fi
fi
fi

if [[ $TODO == *"Launcher"* ]]; then
LNCH=$(zenity --list --radiolist --height=380 --width 300 --title="$NAME $VER - $TODO" --text "What do you want to launch?" --hide-header --column "$NAME $VER" --column "Item" FALSE "Steam" FALSE "Blizzard" FALSE "Origin" FALSE "Uplay" FALSE "Teamspeak" FALSE "Clone Hero" FALSE "Drakensang Online" FALSE "Anarchy Online" FALSE "itch" FALSE "GOG Galaxy" FALSE "League of Legends" FALSE "Custom Prefix")

if [[ $LNCH == *"Steam"* ]]; then
echo $'\033]30;$LNCH\007'        
WINEPREFIX=/home/$USER/$NAME/Games/$LNCH wine "/home/$USER/$NAME/Games/$LNCH/drive_c/Program Files/Steam/Steam.exe" -no-cef-sandbox
fi

if [[ $LNCH == *"Blizzard"* ]]; then
echo $'\033]30;$LNCH\007'
WINEPREFIX=/home/$USER/$NAME/Games/$LNCH wine "/home/$USER/$NAME/Games/$LNCH/drive_c/Program Files/Battle.net/Battle.net.exe"
fi

if [[ $LNCH == *"Origin"* ]]; then
echo $'\033]30;$LNCH\007'
WINEPREFIX=/home/$USER/$NAME/Games/$LNCH wine "/home/$USER/$NAME/Games/$LNCH/drive_c/Program Files/Origin/Origin.exe"
fi

if [[ $LNCH == *"Uplay"* ]]; then
echo $'\033]30;$LNCH\007'
WINEPREFIX=/home/$USER/$NAME/Games/$LNCH wine "/home/$USER/$NAME/Games/$LNCH/drive_c/Program Files/Ubisoft/Ubisoft Game Launcher/Uplay.exe"
fi

if [[ $LNCH == *"Teamspeak"* ]]; then
echo $'\033]30;$LNCH\007'
WINEPREFIX=/home/$USER/$NAME/Programs/$LNCH wine "/home/$USER/$NAME/Programs/$LNCH/TeamSpeak 3 Client/ts3client_win32.exe"
fi

if [[ $LNCH == *"Clone Hero"* ]]; then
echo $'\033]30;$LNCH\007'
WINEPREFIX="/home/$USER/$NAME/Games/$LNCH" wine "/home/$USER/$NAME/Games/$LNCH/clonehero-win32/Clone Hero.exe"
fi

if [[ $LNCH == *"Drakensang Online"* ]]; then
echo $'\033]30;$LNCH\007'
WINEPREFIX="/home/$USER/$NAME/Games/$LNCH" wine "/home/$USER/$NAME/Games/$LNCH/drive_c/Program Files/Drakensang Online/thinclient.exe"
fi

if [[ $LNCH == *"Anarchy Online"* ]]; then
echo $'\033]30;$LNCH\007'
env WINEPREFIX="/home/$USER/$NAME/Games/$LNCH" wine C:\\windows\\command\\start.exe /Unix /home/$USER/$NAME/Games/Anarchy\ Online/dosdevices/c:/ProgramData/Microsoft/Windows/Start\ Menu/Programs/Anarchy\ Online/Anarchy\ Online.lnk
fi

if [[ $LNCH == *"itch"* ]]; then
echo $'\033]30;$LNCH\007'
ITCHVER=25.4.0
WINEPREFIX=/home/$USER/$NAME/Games/$LNCH wine "/home/$USER/.wine/drive_c/users/$USER/Local Settings/Application Data/itch/app-$ITCHVER/itch.exe"
fi

if [[ $LNCH == *"GOG Galaxy"* ]]; then
echo $'\033]30;$LNCH\007'
WINEPREFIX="/home/$USER/$NAME/Games/$LNCH" wine "/home/$USER/$NAME/Games/$LNCH/drive_c/Program Files/GOG Galaxy/GalaxyClient.exe" /runWithoutUpdating /deelevated
fi

if [[ $LNCH == *"League of Legends"* ]]; then
echo $'\033]30;$LNCH\007'
WINEPREFIX="/home/$USER/$NAME/Games/$LNCH" wine "/home/$USER/$NAME/Games/$LNCH/League of Legends/LeagueClient.exe"
fi

if [[ $LNCH == *"Custom Prefix"* ]]; then
echo $'\033]30;Custom Prefix\007'
cd "/home/$USER/$NAME/Custom Prefixes"
FOLDERS=$(ls -a)
PREFIXNAME=$(zenity --list --title="Launch a custom prefix" --height=260 --width=300 --column="What do you want to start?" $FOLDERS)
echo $'\033]30;$PREFIXNAME\007'
bash $PREFIXNAME/start.sh
fi
fi

if [[ $TODO == *"Uninstallation"* ]]; then
UNST=$(zenity --list --radiolist --height=380 --width 300 --title="$NAME $VER - $TODO" --text "What do you want to uninstall?" --hide-header --column "$NAME" --column "Item" FALSE "Steam" FALSE "Blizzard" FALSE "Origin" FALSE "Uplay" FALSE "Teamspeak" FALSE "Clone Hero" FALSE "Drakensang Online" FALSE "Anarchy Online" FALSE "itch" FALSE "GOG Galaxy" FALSE "League of Legends" FALSE "Custom Prefix")

if [[ $UNST == *"Steam"* ]]; then
rm -d -r /home/$USER/$NAME/Games/$UNST
rm -d -r /home/$USER/.local/share/applications/wine/Programs/$UNST
rm /home/$USER/Desktop/$UNST.desktop
fi

if [[ $UNST == *"Blizzard"* ]]; then
rm -d -r /home/$USER/$NAME/Games/$UNST
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Battle.net
rm -d -r /home/$USER/Desktop/Battle.net.desktop
fi

if [[ $UNST == *"Origin"* ]]; then
rm -d -r /home/$USER/$NAME/Games/$UNST
rm -d -r /home/$USER/.local/share/applications/wine/Programs/$UNST
rm /home/$USER/Desktop/$UNST.desktop
fi

if [[ $UNST == *"Uplay"* ]]; then
rm -d -r /home/$USER/$NAME/Games/$UNST
rm -d -r /home/$USER/.local/share/applications/wine/Programs/Ubisoft
rm /home/$USER/Desktop/$UNST.desktop
rm /home/$USER/Desktop/$UNST.lnk 
fi

if [[ $UNST == *"Teamspeak"* ]]; then
rm -d -r /home/$USER/$NAME/Programs/$UNST
fi

if [[ $UNST == *"Clone Hero"* ]]; then
rm -d -r "/home/$USER/$NAME/Games/$UNST"
fi

if [[ $UNST == *"Drakensang Online"* ]]; then
rm -d -r "/home/$USER/$NAME/Games/$UNST"
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/$UNST"
rm "/home/$USER/Desktop/$UNST.desktop"
rm "/home/$USER/Desktop/$UNST.lnk"
fi

if [[ $UNST == *"Anarchy Online"* ]]; then
rm -d -r "/home/$USER/$NAME/Games/$UNST"
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/$UNST"
rm "/home/$USER/Desktop/$UNST.desktop"
fi

if [[ $UNST == *"itch"* ]]; then
rm -d -r /home/$USER/$NAME/Games/$UNST
rm -d -r "/home/$USER/.local/share/applications/wine/Programs/Itch Corp"
fi

if [[ $UNST == *"GOG Galaxy"* ]]; then
rm -d -r "/home/$USER/$NAME/Games/$UNST"
rm -d -r /home/$USER/.local/share/applications/wine/Programs/GOG.com
rm -d -r "/home/$USER/Desktop/$UNST.desktop"
fi

if [[ $UNST == *"League of Legends"* ]]; then
rm -d -r "/home/$USER/$NAME/Games/$UNST"
fi

if [[ $UNST == *"Custom Prefix"* ]]; then
cd "/home/$USER/$NAME/Custom Prefixes"
FOLDERS=$(ls -a)
PREFIXNAME=$(zenity --list --title="$NAME $VER - Select a custom prefix" --height=260 --width=300 --column="What prefix?" $FOLDERS)
rm -r -d "$PREFIXNAME"
fi
fi

if [[ $TODO == *"Winetricks"* ]]; then
WTR=$(zenity --list --radiolist --height=380 --title="$NAME $VER - $TODO" --text "In what prefix do you want to open winetricks?" --hide-header --column "$NAME" --column "Item" FALSE "Steam" FALSE "Blizzard" FALSE "Origin" FALSE "Uplay" FALSE "Teamspeak" FALSE "Clone Hero" FALSE "Drakensang Online" FALSE "Anarchy Online" FALSE "itch" FALSE "GOG Galaxy" FALSE "League of Legends" FALSE "Custom Prefix")

if [[ $WTR == *"Steam"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"Blizzard"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"Origin"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"Uplay"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"Teamspeak"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"Clone Hero"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"Drakensang Online"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"Anarchy Online"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"itch"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"GOG Galaxy"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"League of Legends"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi

if [[ $WTR == *"Custom Prefix"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$WTR winetricks
fi
fi

if [[ $TODO == *"Run a executable in prefix"* ]]; then
RAEP=$(zenity --list --radiolist --height=380 --title="$NAME $VER - $TODO" --text "In what prefix do you want open your executable?" --hide-header --column "$NAME" --column "Item" FALSE "Steam" FALSE "Blizzard" FALSE "Origin" FALSE "Uplay" FALSE "Teamspeak" FALSE "Clone Hero" FALSE "Drakensang Online" FALSE "Anarchy Online" FALSE "itch" FALSE "GOG Galaxy" FALSE "League of Legends" FALSE "Custom Prefix")
EXECUTABLE="$(zenity --file-selection --title="Choose your executable")"
	
if [[ $RAEP == *"Steam"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $LNCH == *"Blizzard"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"Origin"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"Uplay"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"Teamspeak"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"Clone Hero"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"Drakensang Online"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"Anarchy Online"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"itch"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"GOG Galaxy"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"League of Legends"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Games/$RAEP wine "$EXECUTABLE"
fi

if [[ $RAEP == *"Custom Prefix"* ]]; then
cd "/home/$USER/$NAME/Custom Prefixes"
FOLDERS=$(ls -a)
PREFIXNAME=$(zenity --list --title="Select a custom prefix" --height=260 --width=300 --column="What prefix?" $FOLDERS)
WINEPREFIX="/home/$USER/$NAME/Custom Prefixes/$PREFIXNAME" wine "$EXECUTABLE"
fi
fi

if [[ $TODO == *"Update"* ]]; then
UPDE=$(zenity --list --radiolist --height=50 --width 300 --title="$NAME $VER - $TODO" --text "What do you want to update?" --hide-header --column "$NAME" --column "Item" FALSE "Teamspeak" FALSE "Custom Prefix executable")

if [[ $UPDE == *"Teamspeak"* ]]; then
WINEPREFIX=/home/$USER/$NAME/Programs/$UPDE wine "/home/$USER/$NAME/Programs/$UPDE/TeamSpeak 3 Client/update.exe"
killall wine
fi

if [[ $UPDE == *"Custom Prefix executable"* ]]; then
cd "/home/$USER/$NAME/Custom Prefixes"
FOLDERS=$(ls -a)
PREFIXNAME=$(zenity --list --title="$NAME $VER - Select a custom prefix" --height=260 --width=300 --column="What prefix?" $FOLDERS)
EXECUTABLE="$(zenity --file-selection --title="Choose your executable")"
ENV=$(zenity --title="Environment variable" --text "Do you need an environment variable for your executable? (for example DXVK_HUD=1) if not leave it blank." --entry --width=260)
SPM=$(zenity --title="Environment variable" --text "Do you need an startparameter for your executable? (for example -console) if not leave it blank." --entry --width=260) 
cd $PREFIXNAME
rm start.sh
echo "$ENV WINEPREFIX='/home/$USER/$NAME/Custom Prefixes/$PREFIXNAME' wine '$EXECUTABLE' $SPM" >> start.sh
fi
fi
if [[ $TODO == *"Exit"* ]]; then
notify-send "Thanks for using our script and have a great day!"
exec bash
fi
cd $SD
bash $NAME.sh
