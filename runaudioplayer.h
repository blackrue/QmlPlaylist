#ifndef RUNAUDIOPLAYER_H
#define RUNAUDIOPLAYER_H

#include <QObject>
#include <QProcess>

class RunAudioPlayer : public QObject
{
    Q_OBJECT
public:
    explicit RunAudioPlayer(QObject *parent = 0);
    ~RunAudioPlayer();
    Q_INVOKABLE void playFile(QString filename);
signals:

public slots:


private:
    QProcess * audioProcess;
};

#endif // RUNAUDIOPLAYER_H
