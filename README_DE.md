# Homura
[![CodeFactor](https://www.codefactor.io/repository/github/alexander88207/Homura/badge)](https://www.codefactor.io/repository/github/alexander88207/Homura) ![GitHub release](https://img.shields.io/github/release/Alexander88207/Homura) [![Discord](https://img.shields.io/badge/chat-on%20discord-7289da.svg?logo=discord)](https://discord.gg/Mm3aNuQ) <img src="https://img.shields.io/discord/618845118060953600">

# Table of content

- [Einführung](#introduction)
- [Beschreibung](#description-)
- [Abhängigkeiten](#dependencies-syringe)
- [Status](#states-fire)
- [Tweaks](#tweaks-wrench)
- [Einschränkungen](#limitations-x)
- [Installation/Deinstallation](#installationuninstallation-cd)
- [Release-Zyklus](#release-cycle-loudspeaker)
- [Falls sie neu bei FreeBSD sind](#if-you-are-new-to-freebsd-wink)
- [Beitragen](#contribute-pencil2)

# Einführung

Inspiriert von [lutris](https://github.com/lutris/lutris), möchten wir gerne einen Windows Games Launcher für FreeBSD bereitstellen.

# Beschreibung &#x1F4D8;

Installieren deine lieblings Windows Spiele/Launcher ganz einfch!

![](https://github.com/Alexander88207/PWGOFBSD/raw/master/Screenshot.png "Screenshot")

 <img src="https://raw.githubusercontent.com/Alexander88207/PWGOFBSD/master/Screenshot2.png" alt="Monitor" height="500" width="700"> 

# Abhängigkeiten :syringe:

- [curl](https://www.freshports.org/ftp/curl/)
- [bash](https://www.freshports.org/shells/bash)
- [p7zip](https://www.freshports.org/archivers/p7zip/)
- [zenity](https://www.freshports.org/x11/zenity)
- [webfonts](https://www.freshports.org/x11-fonts/webfonts)
- [alsa-utils](https://www.freshports.org/audio/alsa-utils) ([Optional](#if-you-are-new-to-freebsd))
- [winetricks](https://www.freshports.org/emulators/winetricks)
- [vulkan-tools](https://www.freshports.org/devel/vulkan-tools)
- [mesa-demos](https://www.freshports.org/graphics/mesa-demos)
- [i386-wine-devel](https://www.freshports.org/emulators/i386-wine-devel) auf amd64 oder [wine-devel](https://www.freshports.org/emulators/wine-devel) auf i386

# Status :fire:

Diese Liste wird bei jeden Update von [i386-wine-devel](https://www.freshports.org/emulators/i386-wine-devel) auf den neusten Stand gebracht.

Applikation | Funktioniert sie?
------------ | -------------
[Steam](https://www.youtube.com/watch?v=a2z0nbWOarc) | Nutzt windows xp mit einen älteren client damit die Online Funktionen funktionieren. (Beeinträchtigt nicht die leistung!)
[Blizzard](https://www.youtube.com/watch?v=-oAMNgDvWtA) | Runs out of the box.
[Origin](https://www.youtube.com/watch?v=d_j6Hlguydc) | Nutzt windows xp mit einen älteren client. (Beeinträchtigt nicht die leistung!)
Uplay | Läuft direkt nach der Installation, stürzt aber zu oft ab.
Teamspeak | Läuft direkt nach der Installation.
[Clone Hero](https://www.youtube.com/watch?v=qch3_bt4rGo) | Läuft direkt nach der Installation.
Drakensang Online | Stürzt beim start direkt ab.
Anarchy Online | Läuft direkt nach der Installation.
[itch](https://www.youtube.com/watch?v=lp-3g08w70A) | Läuft direkt nach der Installation.
[GOG Galaxy](https://www.youtube.com/watch?v=m4BMvvgeWFE) | Läuft direkt nach der Installation.
League of Legends | Stürzt beim starten des richtigen Clients ab.
Wargaming Game Center | Stürzt direkt 10 Sekunden nach dem Start ab und selbst wenn der Launcher arbeiten sollte, funktioniert ein gewünschtes Spiel möglicherweise nicht. Das Testspiel World of Tanks wurde direkt zu einem Zombie.
Growtopia | Läuft direkt nach der Installation.
 
Wenn du ein spezielles/en spiel oder launcher haben möchtest dann eröffnen einen neues issue :)

# Tweaks :wrench:

Dein Spiel läuft nicht direkt beim erstenmal? Tweaks are [here](TWEAKS.md)

# Einschränkungen :x:

- Nur 32-Bit-Spiele und -Anwendungen, funktioniert derzeitig.
- Keinen Vulkan unterstüzung mit 32bit-wine unter amd64.
- Kwin kann in manchen situationen beim spielen sehr schlecht sein.

# Installation/Deinstallation :cd:

Das Script wurde spezielle für FreeBSD 12.0-RELEASE angefertigt. All andere version werden nicht unterstützt.

Benutzt das Setup um Homura richtig zu installieren.

`curl -O https://raw.githubusercontent.com/Alexander88207/Homura/master/Setup.sh && bash Setup.sh`

Um dieses Skript zu starten, verwenden Sie die Verknüpfung im Startmenü oder verwenden das commando `bash /home/$USER/.local/share/Homura/Homura.sh`.

Um dieses Skript zu deinstallieren, öffnen Sie die `Setup.sh` erneut und wählen Sie `Homura deinstallieren` aus.

# Release-Zyklus :loudspeaker:

Neue Features werden in einer Woche oder in 5 Tagen veröffentlicht.
Wenn ein bestehendes Feature einen Fix benötigt, dann erstelle ich schnell ein Release.

# Falls sie neu bei FreeBSD sind :wink:

- Werden sie feststellen, dass Ihr Mikrofon stumm geschaltet ist. Wenn sie teampeak verwenden möchten. Öffnen Sie den Alsamixer im Terminal und erhöhen Sie die Lautstärke Ihres Mikrofons.

# Beitragen :pencil2:
Wenn sie zu Homura beitragen möchten lies [dies]() bitte erst durch.
