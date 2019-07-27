# Description

Install your favorite windows games & launcher easily!

# Dependencies

- curl
- dialog
- winetricks
- i386-wine-devel on amd64 or wine-devel on i386
- webfonts
- p7zip

# States:

- Steam: Works, but uses winxp with an older steam client to get some online features. (Doesn't affect performance)
- Blizzard: Works.
- Origin: Borked: Crashs at start.
- Uplay: Works, but crashes to often.
- Teamspeak: Works.
- Clone Hero: Crashs at start. WARNING: The game can also hang up and cause a very, very loud sound error!

# Tweaks

Tweaks are [here](Tweaks.md)

# Limitations

- Only 32-Bit Games and Applications working currently.
- No vulkan support on amd64 systems.

# Installation/Uninstallation

Download the latest stable release from [here](https://github.com/Alexander88207/PWGOBSD/releases)

To start this script use the follwing command in the folder:
```
bash PWGOBSD.sh
```

To uninstall that script just delete that and the Games & Programs folder in the home directory.
