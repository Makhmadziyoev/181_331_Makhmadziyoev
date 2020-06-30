#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QFile>
#include <QQmlContext>
#include <file.h>
#include <QString>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    QQmlContext *context = engine.rootContext();
    File file;
    context->setContextProperty("file", &file);
    QObject::connect (engine.rootObjects().first(), SIGNAL(writeFile(QString)), &file, SLOT(write(QString)));
    engine.rootContext()->setContextProperty("pathToFile", "file:///F:/181_331_Makhmadziyoev/181_331_Makhmadziyoev/page.html");

    return app.exec();
}
