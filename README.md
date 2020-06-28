<p align="center">
  <img src="https://github.com/the-homura-project/homura/raw/master/Media/Banner.jpeg">
</p>

<p align="center">
  <img src="https://img.shields.io/github/v/release/the-homura-project/homura?style=flat-square&logo=appveyor"> <img src="https://img.shields.io/discord/618845118060953600?style=flat-square&logo=appveyor">
</p>
<p align="center">
	<a href="https://github.com/the-homura-project/homura/wiki/Status">Status</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura/wiki/Tweaks">Tweaks</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura/wiki/Borked">Borked</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura/wiki/Working-Games">Working Games</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura/wiki/Handbook">Handbook</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura/wiki/Hints">Hints</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura/wiki/Contributing">Contributing</a>
</p>

# Introduction :microphone:

Inspired by [Lutris](https://github.com/lutris/lutris), we would like to provide a game launcher to play Windows games on FreeBSD.

# Description &#x1F4D8;

Homura is a launcher that makes it easy to run Windows games/launcher easily on FreeBSD by providing the requiered fixes and workarounds.

The Windows emulation is provided by [Wine](https://www.winehq.org).

# Homura is NOT :no_entry_sign:

- [Akin to CrossOver or Lutris](https://www.phoronix.com/scan.php?page=news_item&px=Homura-FreeBSD-Gaming)
- [Similar to Wine](https://www.freebsdnews.com/2019/09/06/homura-windows-games-launcher-for-freebsd)

# Run dependencies :syringe:

Hardware:
- A x86 CPU with 1,4 GHz or better
- A GPU with OpenGL 3.0 & 128MB VRAM or better

Software: 
- [shells/bash](https://www.freshports.org/shells/bash)
- [archivers/p7zip](https://www.freshports.org/archivers/p7zip/)
- [x11/zenity](https://www.freshports.org/x11/zenity)
- [devel/xdg-utils](https://www.freshports.org/devel/xdg-utils)
- [x11-fonts/webfonts](https://www.freshports.org/x11-fonts/webfonts)
- [audio/mixertui](https://www.freshports.org/audio/mixertui) ([Optional](https://github.com/the-homura-project/homura/wiki/Hints#if-you-are-new-to-freebsd-wink))
- [emulators/winetricks](https://www.freshports.org/emulators/winetricks)
- [devel/vulkan-tools](https://www.freshports.org/devel/vulkan-tools)
- [graphics/mesa-demos](https://www.freshports.org/graphics/mesa-demos)
- [x11-fonts/noto-extra](https://www.freshports.org/x11-fonts/noto-extra) (Optional)
- [x11/antimicro](https://www.freshports.org/x11/antimicro) ([Optional](https://github.com/the-homura-project/homura/wiki/Controllers#guitar-hero-world-tour-guitar-pc--guitar-hero-3-guitar-les-paul-ps3))
- [emulators/i386-wine](https://www.freshports.org/emulators/i386-wine) on amd64 or [emulators/wine](https://www.freshports.org/emulators/wine) on i386

# Installation/Uninstallation :cd:

### Installing from FreeBSD repository 📦

Note: Packages can lag behind ports. If you want the latest version you may want to use the `latest` repository instead of `quarterly` or build the package yourself.

`# pkg install games/homura`

### Build & installing the port ⚙️

`cd /usr/ports/games/homura/ && make install clean`

### Uninstallation

`# pkg uninstall games/homura`

To also delete the related games etc...

Use the "Delete and reset everything" function.

# Usage :computer:

Homura was created for the gui usage in the first place, the gui can be opened via the commandline `Homura` but also via a shortcut (if you have Homura allowed to create one).

For terminal fans there are also some fast commands:

Examples: 

- To install something use `Homura Install  Steam`
- To launch something use `Homura Launch Steam`
- To uninstall something use `Homura Uninstall Steam`
- To open winetricks in a prefix use `Homura Winetricks Steam`

# Feature / To-Do list

Features | Done?
------------ | -------------
Installation launching & uninstallation of our collection of applications | :heavy_check_mark:
Custom prefixes | :heavy_check_mark:
Shortcut creation | :heavy_check_mark:
Delete & reset everything | :heavy_check_mark:
Enable/Disable DXVK | :heavy_multiplication_x:
Sandboxing | :heavy_multiplication_x:
SteamCMD (steam-console-client) | :heavy_check_mark:
Changing between wine versions | :heavy_multiplication_x:

# Limitations :x:

- Only 32-Bit Games and Applications working currently. You may want to see https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=242625
- No winevulkan for 32bit Wine on amd64. Reason: There are no options to build i386-wine-devel with vulkan.

# Chat :speech_balloon:

You need help, want to help or just want to talk?

No fear we don't bite ;)

- Discord: https://discord.gg/JBKcdNt
- Steam: https://steamcommunity.com/id/Alexander88207/

# Credits :star:

- [Alexander88207](https://github.com/Alexander88207) - Lead programmer & Maintainer
- [MagZu](https://github.com/magzu)          - Hosting the mirror (homura.magzu.net)
- [You?](https://github.com/the-homura-project/homura/wiki/Contributing)

Also special thanks to the port maintainers of i386-wine-devel and wine-devel.

# Screenshots

![](https://raw.githubusercontent.com/the-homura-project/homura/master/Media/Screenshot.png "Screenshot")

![](https://raw.githubusercontent.com/the-homura-project/homura/master/Media/Screenshot4.png "Screenshot")

<img src="https://raw.githubusercontent.com/the-homura-project/homura/master/Media/Screenshot2.png" alt="Monitor" height="500" width="700"> 

<img src="https://raw.githubusercontent.com/the-homura-project/homura/master/Media/Screenshot3.png" alt="Monitor" height="500" width="700"> 

# Videos

Preview: https://www.youtube.com/watch?v=6B1h0F4rIs4

- Review by RoboNuggie: https://www.youtube.com/watch?v=0lLs3JxezBM
- Review by Linux Lounge: https://www.youtube.com/watch?v=BLNuRwLm2FI
- BSD-PL November 2019: https://www.youtube.com/watch?v=X68aGybmHwI&t=2029s
