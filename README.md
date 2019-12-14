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
	<a href="https://github.com/the-homura-project/homura-docs/blob/master/CONTRIBUTING.md">Contrubuting</a>
</p>

# Introduction :microphone:

Inspired by [lutris](https://github.com/lutris/lutris), We would like to provide a game launcher to play windows games on FreeBSD.

# Description &#x1F4D8;

Homura is a launcher that makes it easy to run windows games/launcher easily on FreeBSD by providing the requiered fixes and workarounds.

The Windows emulation is provided by [Wine](https://www.winehq.org).

# Homura is NOT :no_entry_sign:

- [Akin to CrossOver or Lutris](https://www.phoronix.com/scan.php?page=news_item&px=Homura-FreeBSD-Gaming)
- [Similar to Wine](https://www.freebsdnews.com/2019/09/06/homura-windows-games-launcher-for-freebsd)

# Dependencies :syringe:

Physical:
- A x86 CPU with 1,4 GHz or better
- A GPU with OpenGL 3.0 & 128MB VRAM or better

Software: 
- [curl](https://www.freshports.org/ftp/curl/)
- [bash](https://www.freshports.org/shells/bash)
- [p7zip](https://www.freshports.org/archivers/p7zip/)
- [zenity](https://www.freshports.org/x11/zenity)
- [xdg-utils](https://www.freshports.org/devel/xdg-utils)
- [webfonts](https://www.freshports.org/x11-fonts/webfonts)
- [alsa-utils](https://www.freshports.org/audio/alsa-utils) ([Optional](#if-you-are-new-to-freebsd-wink))
- [winetricks](https://www.freshports.org/emulators/winetricks)
- [vulkan-tools](https://www.freshports.org/devel/vulkan-tools)
- [mesa-demos](https://www.freshports.org/graphics/mesa-demos)
- [i386-wine-devel](https://www.freshports.org/emulators/i386-wine-devel) on amd64 or [wine-devel](https://www.freshports.org/emulators/wine-devel) on i386

# Installation/Uninstallation :cd:

### Installation

Note: It is not recommended to simply download the script and make it executable.

### Installing from FreeBSD repository 

Is [on the way](https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=241042)

### Build & installing the port 

Is [here](https://github.com/the-homura-project/homura-port)

### Uninstallation

`# pkg uninstall homura`

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

- Only 32-Bit Games and Applications working currently.
- No winevulkan for 32bit Wine on amd64.

# Release cycle :loudspeaker:

New features gets releasd in a week or in 5 days.
If an existing feature needs a fix then we will release that ASAP and will have a number like 1.2.x

# Chat :speech_balloon:

No fear we don't bite ;)

- IRC: #freebsd-games ping @Alexander88207 if he is around.
- Discord: https://discord.gg/JBKcdNt

# Credits :star:

- [Alexander88207](https://github.com/Alexander88207) - Lead programmer
- [MagZu](https://github.com/magzu)          - Hosting the mirror's (alt.magzu.net) & (homura.magzu.net)
- [Contributors](https://github.com/the-homura-project/homura/graphs/contributors)     - for contributing

# Screenshots & videos

![](https://raw.githubusercontent.com/The-Homura-Project/Homura/master/Media/Screenshot.png "Screenshot")

<img src="https://raw.githubusercontent.com/The-Homura-Project/Homura/master/Media/Screenshot2.png" alt="Monitor" height="500" width="700"> 

Preview: https://www.youtube.com/watch?v=6B1h0F4rIs4

Review by RoboNuggie: https://www.youtube.com/watch?v=0lLs3JxezBM
