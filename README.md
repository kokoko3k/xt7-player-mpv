xt7-player-mpv
======
An open source gui to mpv.
xt7-player-mpv aims to be an (in)complete graphical interface to mpv, focused on usability.

It also provides extra features like youtube and shoutcast integration, dvbt,
media tagging, library and playlist managment and a lot more.
Visit: http://xt7-player.sourceforge.net/xt7forum/viewtopic.php?f=4&t=2
for a screenshots tour.

It is written and requires (the latest) Gambas3:
http://gambas.sourceforge.net/en/main.html

<p align="center">
 <img src="http://wpage.unina.it/aorefice/sharevari/xt7-player-mpv-github-shots/main.jpg"</img>
 <img src="http://wpage.unina.it/aorefice/sharevari/xt7-player-mpv-github-shots/music.jpg"</img>
</p>


Mandatory requirements:
======
  * Gambas 3 (usually the very latest version)
  * Qt5 (it is still possible to use Qt4 with little effort)
  * mpv



Optional requirements:
======
  * taglib to tag audio files and speed-up library syncronization:
  http://developer.kde.org/~wheeler/taglib.html

  * xbindkeys: to use global hotkeys
  http://hocwp.free.fr/xbindkeys/

  * scan and femon from LinuxTV dvb-apps to use dvbt features
  http://www.linuxtv.org/wiki/index.php/LinuxTV_dvb-apps

  * youtube-dl to watch and download youtube videos
  http://rg3.github.com/youtube-dl/


Qt4 or Qt5?
======
xt7-player works with qt4 and qt5,
but will defaults to qt5 for any release past 0.20.384,
but build it for Qt4 toolkit is still possible:
Just open .project file and change the following lines:
```
 Component=gb.qt5
 Component=gb.qt5.ext
```
to:
```
 Component=gb.qt4
 Component=gb.qt4.ext
```
 
Then build as follows:


Compiling it:
======
```
After you installed gambas 3, just checkout and compile xt7 that way:

# git clone https://github.com/kokoko3k/xt7-player-mpv.git
# cd xt7-player-mpv/
# /path/to/gambas/binaries/gbc3 -e -a -g -t -p -m
# /path/to/gambas/binaries/gba3
# ./xt7-player-mpv.gambas
```


