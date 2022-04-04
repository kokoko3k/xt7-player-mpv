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
  * Qt5
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


Compiling it:
======
```
After you installed gambas 3, just checkout and compile xt7 that way:

# git clone https://github.com/kokoko3k/xt7-player-mpv.git
# cd xt7-player-mpv/
# /path/to/gambas/binaries/gbc3 -e -a -g -t -p -m #<-- for older gambas versions
# /path/to/gambas/binaries/gbc3 -e -a -g -t -f public-module -f public-control  #<-- for newer gambas versions
# /path/to/gambas/binaries/gba3
# ./xt7-player-mpv.gambas
```


