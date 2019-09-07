# Homura
[![CodeFactor](https://www.codefactor.io/repository/github/alexander88207/Homura/badge)](https://www.codefactor.io/repository/github/alexander88207/Homura) ![GitHub release](https://img.shields.io/github/release/Alexander88207/Homura) [![Discord](https://img.shields.io/badge/chat-on%20discord-7289da.svg?logo=discord)](https://discord.gg/Mm3aNuQ)

# Table of content

- [Introduction](#introduction)
- [Description](#description-)
- [Dependencies](#dependencies-syringe)
- [States](#states-fire)
- [Tweaks](#tweaks-wrench)
- [Limitations](#limitations-x)
- [Installation/Uninstallation](#installationuninstallation-cd)
- [Release cycle](#release-cycle-loudspeaker)
- [Contribute](#contribute-pencil2)

# Introduction

Inspired by [lutris](https://github.com/lutris/lutris), we would like to provide a game launcher to play windows games on FreeBSD.

# Description &#x1F4D8;

Install your favorite windows games & launcher easily!

![](https://github.com/Alexander88207/PWGOFBSD/raw/master/Screenshot.png "Screenshot")

 <img src="https://raw.githubusercontent.com/Alexander88207/PWGOFBSD/master/Screenshot2.png" alt="Monitor" height="500" width="700"> 

# Dependencies :syringe:

- [curl](https://www.freshports.org/ftp/curl/)
- [bash](https://www.freshports.org/shells/bash)
- [p7zip](https://www.freshports.org/archivers/p7zip/)
- [zenity](https://www.freshports.org/x11/zenity)
- [webfonts](https://www.freshports.org/x11-fonts/webfonts)
- [alsa-utils](https://www.freshports.org/audio/alsa-utils) (Optional)
- [winetricks](https://www.freshports.org/emulators/winetricks)
- [vulkan-tools](https://www.freshports.org/devel/vulkan-tools)
- [mesa-demos](https://www.freshports.org/graphics/mesa-demos)
- [i386-wine-devel](https://www.freshports.org/emulators/i386-wine-devel) on amd64 or [wine-devel](https://www.freshports.org/emulators/wine-devel) on i386

# States :fire:

This list will be refreshed on every update of [i386-wine-devel](https://www.freshports.org/emulators/i386-wine-devel)

Application | Works?
------------ | -------------
 [Steam](https://www.youtube.com/watch?v=a2z0nbWOarc) | Uses winxp with an older steam client to get some online features. (Doesn't affect performance)
 [Blizzard](https://www.youtube.com/watch?v=-oAMNgDvWtA) | Runs out of the box.
 [Origin](https://www.youtube.com/watch?v=d_j6Hlguydc) | Uses winxp with an older origin client. (Doesn't affect performance)
 Uplay | Runs out of the box, but crashes to often.
 Teamspeak | Runs out of the box.
 [Clone Hero](https://www.youtube.com/watch?v=qch3_bt4rGo) | Runs out of the box. WARNING: The game can also cause a very, very loud sound error! To fix it restart the system.
 Drakensang Online | Crashs at starting the game client.
 Anarchy Online | Runs out of the box. Please let the installer create a shortcut or you are unable to start the launcher!
 [itch](https://www.youtube.com/watch?v=lp-3g08w70A) | Runs out of the box.
 [GOG Galaxy](https://www.youtube.com/watch?v=m4BMvvgeWFE) | Runs out of the box.
 League of Legends | Crashs at starting the game client.
 
If you want a special game or launcher then create an issue :)

# Tweaks :wrench:

Tweaks are [here](Tweaks.md)

# Limitations :x:

- Only 32-Bit Games and Applications working currently.
- No vulkan support on amd64 with 32bit.
- Kwin is bad for gaming on freebsd in some situations.

# Installation/Uninstallation :cd:

This Script is designed for FreeBSD 12.0-RELEASE. All other versions are not supported!

Use the setup to install Homura correctly

`curl -O https://raw.githubusercontent.com/Alexander88207/Homura/master/Setup.sh && bash Setup.sh`

To start this script use the shortcut in the startmenu or use `bash /home/$USER/.local/share/Homura/Homura.sh`.

To uninstall that script open the `Setup.sh` again and select `Uninstall Homura`.

# Release cycle :loudspeaker:

New features gets releasd in a week or in 5 days.
If an existing feature needs a fix then i create fast a release.

## Contribute :pencil2:
if you want to contribute to this repo then just send a pull request or issues :)
