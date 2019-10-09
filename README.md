# Homura <img src="https://vignette.wikia.nocookie.net/madoka/images/7/72/Homura_magical_outfit_1.png/revision/latest/top-crop/width/320/height/320?cb=20160821012353" alt="Monitor" height="50" width="50"> 
![GitHub release (latest by date)](https://img.shields.io/github/v/release/the-homura-project/homura) [![Discord](https://img.shields.io/badge/chat-on%20discord-7289da.svg?logo=discord)](https://discord.gg/Mm3aNuQ) <img src="https://img.shields.io/discord/618845118060953600">

# Readme languages :us: :de:
- [English](README.md) written by [Alexander88207](https://github.com/Alexander88207) and improved by [felixactually](https://github.com/felixactually)
- [German](Docs/German/README_DE.md) translated by [Alexander88207](https://github.com/Alexander88207)

# Table of content :books:

- [Introduction](#introduction-microphone)
- [Description](#description-)
- [Handbook](#Handbook-orange_book)
- [Dependencies](#dependencies-syringe)
- [States](#states-fire)
- [Games that are currently dont work](#games-that-are-currently-dont-work-cyclone)
- [Tweaks](#tweaks-wrench)
- [Limitations](#limitations-x)
- [Things that are currently just out of the question](#things-that-are-currently-just-out-of-the-question-rabbit2)
- [Installation/Uninstallation](#installationuninstallation-cd)
- [Release cycle](#release-cycle-loudspeaker)
- [If you are new to freebsd](#if-you-are-new-to-freebsd-wink)
- [Contribute](#contribute-pencil2)
- [Credits](#credits-star)
- [See how it works](#see-how-it-works-eyes)

# Introduction :microphone:

Inspired by [lutris](https://github.com/lutris/lutris), We would like to provide a game launcher to play windows games on FreeBSD.

Please know: Homura is in no way comparable to [lutris](https://github.com/lutris/lutris) or anything more complex.

# Description &#x1F4D8;

Homura is launcher that makes it easy to run windows games/launcher just with one click on FreeBSD.

The Windows emulation is provided by [Wine](https://www.winehq.org).

![](https://raw.githubusercontent.com/The-Homura-Project/Homura/master/Media/Screenshot.png "Screenshot")

<img src="https://raw.githubusercontent.com/The-Homura-Project/Homura/master/Media/Screenshot2.png" alt="Monitor" height="500" width="700"> 

# Handbook :orange_book:

If you want to better understand how Homura works then take a look at our [handbook](https://github.com/the-homura-project/homura-handbook).

# Dependencies :syringe:

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

# States :fire:

This list will be refreshed on every update of [i386-wine-devel](https://www.freshports.org/emulators/i386-wine-devel)

Application | Works?
------------ | -------------
[Steam](https://store.steampowered.com/) | Uses winxp with an older steam client to get some online features. (Doesn't affect performance)
[Blizzard](https://www.blizzard.com) | Runs out of the box.
[Origin](https://www.origin.com) | Uses winxp with an older origin client. (Doesn't affect performance) The modern client is currently one issue away to use it!
[Uplay](https://uplay.ubisoft.com) | Runs out of the box, but crashes to often.
[Teamspeak](https://teamspeak.com) | Runs out of the box.
[Clone Hero](https://clonehero.net) | Runs out of the box.
[Drakensang Online](https://www.drakensang.com) | Runs out of the box, but fails with AMD cards.
[Anarchy Online](https://www.anarchy-online.com) | Runs out of the box, but fails with AMD cards.
[itch](https://itch.io) | Runs out of the box.
[GOG Galaxy](https://www.gog.com/) | Runs out of the box.
[League of Legends](https://euw.leagueoflegends.com) | Crashes at starting the game client.
[Wargaming Game Center](https://eu.wargaming.net/) | Crashes directly 10 seconds after the start and even if the launcher should work a desired game may not work. The test game World of Tanks became a zombie directly.
[Growtopia](https://www.growtopiagame.com/) | Runs out of the box.
[Bethesda Launcher](https://bethesda.net) | Runs out of the box.
[Arc](https://www.arcgames.com) | Crashes after login.
[Extra/Torchlight German Patch](https://steamcommunity.com/app/41500/discussions/0/451851477884787949/) | Runs out of the box.
[Extra/Clone Hero: Exilelord song pack in medium difficulty]() | Credits of this pack are going to Exilelord, NoFaceCH and NTVMB.
[Extra/Left4Gore](http://www.left4gore.com/) | -

If you want a special game or launcher then create an issue :)

# Tweaks :wrench:

Your game dont run in the first time? Tweaks are [here](Docs/English/TWEAKS.md)

# Games that are currently dont work :cyclone:

[Here](Docs/English/BORKED.md) is a list of games that are currently dont work or unplayable.

# Limitations :x:

- Only 32-Bit Games and Applications working currently.
- No vulkan support on amd64 with 32bit.
- Kwin is bad for gaming in some situations.

# Things that are currently just out of the question :rabbit2:

- Epic Games launcher
- My.com launcher
- [Reusing of the json files from lutris](https://github.com/Alexander88207/Homura/issues/9)
- Glyph
- Rockstar Games Launcher

# Installation/Uninstallation :cd:

### Installing from FreeBSD repository 

Is [on the way](https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=241042)

### Compile port & installing the port 

Is [here](https://github.com/the-homura-project/homura-port)

# Release cycle :loudspeaker:

New features gets releasd in a week or in 5 days.
If an existing feature needs a fix then we will release that ASAP and will have a number like 1.2.x

# If you are new to freebsd :wink:

- Your microphone is muted by default. If you want to use Teamspeak, open Alsamixer in the terminal and raise the volume of the microphone.

# Contribute :pencil2:
if you want to contribute to this repo then take a look [here](Docs/English/CONTRIBUTING.md)

# Credits :star:

- [Alexander88207](https://github.com/Alexander88207) - Lead programmer
- [MagZu](https://github.com/magzu)          - Hosting the mirror's (alt.magzu.net) & (homura.magzu.net)
- [Contributors](https://github.com/the-homura-project/homura/graphs/contributors)     - for contributing


# See how it works :eyes:

<a href="https://www.youtube.com/watch?v=wrjlfRfjaMU"><img src="https://www.bilder-upload.eu/upload/232376-1569000876.png" style="width:82px; height:86px" title="Homura" alt="Homura"></a>
