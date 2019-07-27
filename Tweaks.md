# Tweaks

This is the tweaks site here i store tweaks for some games.

# Borderlands 2 (Steam)

The game dont start if this game gets started over steam, but works if you start the "Borderlands2.exe" with steam in the background.

`WINEPREFIX='/home/$USER/Games/Steam' wine '/home/$USER/Games/Steam/drive_c/Program Files/Steam/steamapps/common/Borderlands 2/Binaries/Win32/Borderlands2.exe'`

# SUPERHOT (Steam)

Here i guess steam picks the wrong exe, because SUPERHOT.exe crashs but SH.exe not.

`WINEPREFIX='/home/$USER/Games/Steam' wine '/home/$USER/Games/Steam/drive_c/Program Files/Steam/steamapps/common/SUPERHOT/SH.exe'`

# Anno 1404 (Steam)

The game stays black with sounds because it dont know how to render something because it cannot detect the directx version.

So we'll have to set it ourselves.

open the file '/home/$USER/Games/Steam/drive_c/users/$USER/Application Data/Ubisoft/Anno1404/Config/Engine.ini'

and change the setting `DirectXVersion` from 0 to 9

# FarCry (Steam)

Disable "Fullscreen" in the "FarCry Config" tool and let automatically detect the graphic settings.

Then the graphics should be set to the worst, this is also correct because the game does not start with higher graphics settings.

# The Elder Scrolls V: Skyrim (Steam)

Enable "Windowed Mode" at the start and change the graphic settings to very low so that you stay under 4GB ram usage.

# PAYDAY 2 (Steam)

Depth of field must be switched off in graphic settings to avoid graphic errors.

# Unity mouse problem

Tab out and in.

# World of Warcraft 1.12.1 no sound

Start the game in a new wine preifx.
