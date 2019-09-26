# Tweaks


# List
Application | Tweak
------------ | -------------
 Borderlands 2 (Steam) | The game dont start if this game gets started over steam, but works if you start the "Borderlands2.exe" with steam in the background. The game dont start if this game gets started over steam, but works if you start the "Borderlands2.exe" with steam in the background.`WINEPREFIX=/home/$USER/.local/share/Homura/Games/Steam wine "/home/$USER/.local/share/Homura/Games/Steam/drive_c/Program Files/Steam/steamapps/common/Borderlands 2/Binaries/Win32/Borderlands2.exe"`
SUPERHOT (Steam) | Here i guess steam picks the wrong exe, because SUPERHOT.exe crashs but SH.exe not.`WINEPREFIX=/home/$USER/.local/share/Homura/Games/Steam wine "/home/$USER/.local/share/Homura/Games/Steam/drive_c/Program Files/Steam/steamapps/common/SUPERHOT/SH.exe"`
Anno 1404 (Steam) |The game stays black with sounds because it dont know how to render something because it cannot detect the directx version. So we'll have to set it ourselves. Open the file `"/home/$USER/.local/share/Homura/Games/Steam/drive_c/users/$USER/Application Data/Ubisoft/Anno1404/Config/Engine.ini"` and change the setting `DirectXVersion` from 0 to 9
FarCry (Steam) | Disable "Fullscreen" in the "FarCry Config" tool and let automatically detect the graphic settings. Then the graphics should be set to the worst, this is also correct because the game does not start with higher graphics settings.
The Elder Scrolls V: Skyrim (Steam) | Enable "Windowed Mode" at the start and change the graphic settings to very low so that you stay under 4GB ram usage.
PAYDAY 2 (Steam) | Depth of field must be switched off in graphic settings to avoid graphic errors.
Unity mouse problems | Tab out and in.
World of Warcraft 1.12.1 no sound | Start the game in a new wine preifx.
Garry's Mod | Workshop addons dont work. You need download and install your workshop addon/collection manually. To download the addons visit https://steamworkshopdownloader.io/ and after downloading your addon, copy the addon files in a folder and copy the folder to `/home/$USER/.local/share/Homura/Games/Steam/drive_c/Program Files/Steam/steamapps/common/GarrysMod/garrysmod/addons/`
Games For Windows Live Games | Old games like GTA IV, Viva Pinata etc.. with the GFWLG login dont work. This need to be workarounded by installing XLiveLess. 

# FAQ

# What i can do if i have sound problems?

Open winetricks in the gameprefix and install xact. At this time faudio can not be applayed because the newest version of winetricks have been not ported yet and i dont recommend anyone to use selfupdate.

# Use more than 60hz!

Some games are locked to 60hz in fullscreen, this may cause image tearing or even poor performance, to workaround that lock use fullscreen-windowed or windowed. Btw you can see if your default Hz gets changed if you go ingame and the screen is longer black and usually.

# I want to use Directx 9/10/11 only!

Open winetricks in the game prefix then select open in winecfg and go to libraries. Now add d3d9/d3d10/d3d11 and set them to disabled and appy the settings.
