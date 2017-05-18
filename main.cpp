#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlContext>
#include "runaudioplayer.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    RunAudioPlayer audioPlayer;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("audioPlayer",&audioPlayer);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
