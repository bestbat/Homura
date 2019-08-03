# PWGOFBSD - Play Windows Games On FreeBSD
[![CodeFactor](https://www.codefactor.io/repository/github/alexander88207/pwgofbsd/badge)](https://www.codefactor.io/repository/github/alexander88207/pwgofbsd) ![GitHub release](https://img.shields.io/github/release/Alexander88207/PWGOBSD)

# Description &#x1F4D8;

Install your favorite windows games & launcher easily!

![](https://github.com/Alexander88207/PWGOFBSD/raw/master/Screenshot.png "Screenshot")

# Dependencies :syringe:

- curl
- dialog
- winetricks
- i386-wine-devel on amd64 or wine-devel on i386
- webfonts
- p7zip

# States :fire:

- Steam: Works, but uses winxp with an older steam client to get some online features. (Doesn't affect performance)
- Blizzard: Works.
- Origin: Borked: Crashs at start.
- Uplay: Works, but crashes to often.
- Teamspeak: Works.
- Clone Hero: Crashs at start. WARNING: The game can also hang up and cause a very, very loud sound error!

If you want a special game then create an issue :)

# Tweaks :wrench:

Tweaks are [here](Tweaks.md)

# Limitations :x:

- Only 32-Bit Games and Applications working currently.
- No vulkan support on amd64 systems.

# Installation/Uninstallation :cd:

Download the latest stable release from [here](https://github.com/Alexander88207/PWGOBSD/releases)

To start this script use the follwing command in the folder:
```
bash PWGOFBSD.sh
```

To uninstall that script just delete that and the Games & Programs folder in the home directory.

## Contribute :pencil2:
if you want to contribute to this repo then just send a pull request or issues :)
