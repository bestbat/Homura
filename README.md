# Homura
[![CodeFactor](https://www.codefactor.io/repository/github/alexander88207/Homura/badge)](https://www.codefactor.io/repository/github/alexander88207/Homura) ![GitHub release](https://img.shields.io/github/release/Alexander88207/Homura) [![Discord](https://img.shields.io/badge/chat-on%20discord-7289da.svg?logo=discord)](https://discord.gg/uuwK9EV)

# Introduction

Inspired by lutris, we would like to provide a game launcher to play windows games on FreeBSD.

# Description &#x1F4D8;

Install your favorite windows games & launcher easily!

![](https://github.com/Alexander88207/PWGOFBSD/raw/master/Screenshot.png "Screenshot")

 <img src="https://raw.githubusercontent.com/Alexander88207/PWGOFBSD/master/Screenshot2.png" alt="Monitor" height="500" width="700"> 

# Dependencies :syringe:

- curl
- p7zip
- dialog
- zenity
- screen (Optional)
- webfonts
- winetricks
- i386-wine-devel on amd64 or wine-devel on i386

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

Download the latest stable release from [here](https://github.com/Alexander88207/Homura/releases)

To start this script use the follwing command in the folder:
```
bash Homura.sh
```
To get a better design, copy the file `.dialogrc` to `/home/$USER`

To uninstall that script just delete the Homura folder in the home directory.

# Hide terminal

The only solution is to use screen.

Start a screen session in your terminal with `screen -r steam` for example and then open PWGOFBSD after launching something press ctl+a+d then you can close the terminal. To re-open the session use `screen -r steam`.

## Contribute :pencil2:
if you want to contribute to this repo then just send a pull request or issues :)
