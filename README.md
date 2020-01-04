<p align="center">
  <img src="https://github.com/the-homura-project/homura/raw/master/Media/Banner.jpeg">
</p>

<p align="center">
  <img src="https://img.shields.io/github/v/release/the-homura-project/homura?style=flat-square&logo=appveyor"> <img src="https://img.shields.io/discord/618845118060953600?style=flat-square&logo=appveyor">
</p>
<p align="center">
	<a href="https://github.com/the-homura-project/homura-docs/blob/master/STATUS.md">Status</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura-docs/blob/master/TWEAKS.md">Tweaks</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura-docs/blob/master/BORKED.md">Borked</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura-docs/blob/master/RECOMMENDATIONS.md">Recommendations</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura-docs/blob/master/Handbook.md">Handbook</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura-docs/blob/master/HINTS.md">Hints</a>&nbsp;&nbsp;&nbsp;
	<a href="https://github.com/the-homura-project/homura-docs/blob/master/CONTRIBUTING.md">Contributing</a>
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

Physical:
- A x86 CPU with 1,4 GHz or better
- A GPU with OpenGL 3.0 & 128MB VRAM or better

Software: 
- [ftp/curl](https://www.freshports.org/ftp/curl/)
- [shells/bash](https://www.freshports.org/shells/bash)
- [archivers/p7zip](https://www.freshports.org/archivers/p7zip/)
- [x11/zenity](https://www.freshports.org/x11/zenity)
- [devel/xdg-utils](https://www.freshports.org/devel/xdg-utils)
- [x11-fonts/webfonts](https://www.freshports.org/x11-fonts/webfonts)
- [audio/alsa-utils](https://www.freshports.org/audio/alsa-utils) ([Optional](https://github.com/the-homura-project/homura-docs/blob/master/HINTS.md#if-you-are-new-to-freebsd-wink))
- [emulators/winetricks](https://www.freshports.org/emulators/winetricks)
- [devel/vulkan-tools](https://www.freshports.org/devel/vulkan-tools)
- [graphics/mesa-demos](https://www.freshports.org/graphics/mesa-demos)
- [x11-fonts/noto](https://www.freshports.org/x11-fonts/noto)
- [x11/antimicro](https://www.freshports.org/x11/antimicro) ([Optional](https://github.com/the-homura-project/homura-docs/blob/master/CONTROLLERS.md#guitar-hero-world-tour-guitar-pc--guitar-hero-3-guitar-les-paul-ps3))
- [emulators/i386-wine-devel](https://www.freshports.org/emulators/i386-wine-devel) on amd64 or [emulators/wine-devel](https://www.freshports.org/emulators/wine-devel) on i386

# Installation/Uninstallation :cd:

### Installing from FreeBSD repository 📦

Currently homura is only in the latest repository. 

`# pkg install games/homura`

### Build & installing the port

Is [here](https://github.com/the-homura-project/homura-port)

### Uninstallation

`# pkg uninstall games/homura`

To also delete the related games etc...

`rm -r -d /usr/home/$USER/.local/share/Homura`

`rm /usr/home/$USER/.local/share/applications/Homura.desktop`

# Usage :computer:

Homura can be opened via the commandline `Homura` but also via a shortcut (if you have Homura allowed to create one).

For terminal fans there are also some fast commands:

Examples: 

- To install something use `Homura Install  Steam`
- To launch something use `Homura Launch Steam`
- To uninstall something use `Homura Uninstall Steam`
- To open winetricks in a prefix use `Homura Winetricks Steam`
- To run a exe file in a prefix use `Homura RunEXE Steam /usr/home/alexander/Downloads/Patch.exe`

# Limitations :x:

- Only 32-Bit Games and Applications working currently. You may want to see https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=242625
- No winevulkan for 32bit Wine on amd64. Reason: There are no options to build i386-wine-devel with vulkan.

# Chat :speech_balloon:

No fear we don't bite ;)

- Discord: https://discord.gg/JBKcdNt

# Credits :star:

- [Alexander88207](https://github.com/Alexander88207) - Lead programmer & Maintainer
- [MagZu](https://github.com/magzu)          - Hosting the mirror's (alt.magzu.net) & (homura.magzu.net)
- [You](https://github.com/the-homura-project/homura-docs/blob/master/CONTRIBUTING.md)? - ?
- [Contributors](https://github.com/the-homura-project/homura/graphs/contributors)     - for contributing

# Screenshots & videos :video_camera:

![](https://raw.githubusercontent.com/The-Homura-Project/Homura/master/Media/Screenshot.png "Screenshot")

<img src="https://raw.githubusercontent.com/The-Homura-Project/Homura/master/Media/Screenshot2.png" alt="Monitor" height="500" width="700"> 

Preview: https://www.youtube.com/watch?v=6B1h0F4rIs4

Review by RoboNuggie: https://www.youtube.com/watch?v=0lLs3JxezBM

BSD-PL November 2019: https://www.youtube.com/watch?v=X68aGybmHwI&t=2029s
