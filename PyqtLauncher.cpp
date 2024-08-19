#include "PyqtLauncher.h"
#include <QProcess>
#include <QProcessEnvironment>
#include <QDebug>

PyQtLauncher::PyQtLauncher(QObject *parent) : QObject(parent)
{
}

void PyQtLauncher::launchPyQtAppPanelDetection()
{
    QString pythonExecutable = "/home/anas/DetectionNavette/myenv/bin/python3.12";
    QString pythonScript = "/home/anas/DetectionNavette/PanelDetection.py";

    QProcess process;
    QProcessEnvironment env = QProcessEnvironment::systemEnvironment();
    env.insert("QT_QPA_PLATFORM_PLUGIN_PATH", "/home/anas/Qt/5.15.2/gcc_64/plugins");
    process.setProcessEnvironment(env);

    if (!QProcess::startDetached(pythonExecutable, QStringList() << pythonScript)) {
        qWarning() << "Failed to launch PanelDetection script!";
    }
}



void PyQtLauncher::launchPyQtAppPersonDetection()
{
    QString pythonExecutable = "/home/anas/DetectionNavette/myenv/bin/python3.12";
    QString pythonScript = "/home/anas/DetectionNavette/PersonDetection.py";

    QProcess process;
    QProcessEnvironment env = QProcessEnvironment::systemEnvironment();
    env.insert("QT_QPA_PLATFORM_PLUGIN_PATH", "/home/anas/Qt/5.15.2/gcc_64/plugins");
    process.setProcessEnvironment(env);

    if (!QProcess::startDetached(pythonExecutable, QStringList() << pythonScript)) {
        qWarning() << "Failed to launch PersonDetection script!";
    }
}

