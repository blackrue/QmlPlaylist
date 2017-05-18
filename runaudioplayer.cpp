#include "runaudioplayer.h"

RunAudioPlayer::RunAudioPlayer(QObject *parent) : QObject(parent),audioProcess(new QProcess(this))
{

}
RunAudioPlayer::~RunAudioPlayer()
{
delete audioProcess;
}
void RunAudioPlayer::playFile(QString filename)
{
    const QString playCommand = "mplayer " + filename;
   // qDebug() <<  playCommand.toStdString();
    audioProcess->start(playCommand);
}
