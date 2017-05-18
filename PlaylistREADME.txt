In order to run this you must run on an Ubuntu linux machine and you must install mplayer. I couldn't get Audio in 
QML to play files of .m4a format. So I binded a QProcess in a Qt model to QML and had the QML view pass the audio file name
to the process which then launched mplayer with the file name and played the file. 

To install mplayer
sudo apt-get install mplayer


To play a song in mplayer 
mplayer Song.m4a


If I had more time I would add button chirps for any click. 
I would add highlighting and toggling for a selected song.
I would also add a now playing widget between the playlist title and the Listview. This would show what song was playing,
I would also give the duration of the song and current seconds played. 
I would give it some fancier fonts as well. 