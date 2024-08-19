#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml>
#include <QIcon>
#include <QDebug>
#include "appmodel.h"
#include "UltrasonSensor.h"
#include "settings.h"
#include "qmlinterface.h"
#include "radialbar.h"
#include "mytcpsocket.h"
#include "PyqtLauncher.h"

int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);



    QQmlApplicationEngine engine;
    MyTcpSocket server;
    server.startServer();
    engine.rootContext()->setContextProperty("tcpSocket", &server);


    //PythonQtModel
    PyQtLauncher pyqtLauncher;
    engine.rootContext()->setContextProperty("pyqtLauncher", &pyqtLauncher);

    Settings settings;
    engine.rootContext()->setContextProperty("cSettings",&settings);

    qmlRegisterSingletonType(QUrl("qrc:/theme.qml"), "Theme", 1, 0, "Theme");

    //ultrason
    UltrasonSensor sensor;

    engine.rootContext()->setContextProperty("ultrasonSensor", &sensor);


    //General Magic Api Key
    engine.rootContext()->setContextProperty("__my_secret_token", "eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiIzNWQ4NDdmNC0yOGI4LTQ2ZGUtYTI2OC05OTkwOTBjODBjMGMiLCJleHAiOjE3MjU5MjI4MDAsImlzcyI6Ik1hZ2ljIExhbmUiLCJqdGkiOiIwNTI2ZGZkOC1kNzcwLTRiYTUtODAxMS1lYmU2NmZmY2JjMjEifQ.JecoLAax8mki2hLVodwLw_oPtKKOaQqDx_b_qmTEu1t1ybM8nGQuokNe7t3rwksIZOQH5O1rnkSoHuv67Vck3g");

    //meteo widget
    qmlRegisterType<WeatherData>("WeatherInfo", 1, 0, "WeatherData");
    qmlRegisterType<AppModel>("WeatherInfo", 1, 0, "AppModel");
    qRegisterMetaType<WeatherData>();



    QmlInterface * qmlInterface = new QmlInterface(&app, &engine);
    qmlRegisterType<RadialBar>("CustomControls", 1, 0, "RadialBar");
    engine.rootContext()->setContextProperty(QStringLiteral("QmlInterface"),qmlInterface);

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
