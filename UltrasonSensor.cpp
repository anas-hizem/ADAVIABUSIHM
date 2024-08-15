#include "UltrasonSensor.h"
#include <QtMath>
#include <QDebug>

UltrasonSensor::UltrasonSensor(QObject *parent)
    : QObject(parent), m_avantDroit(0.5), // Valeur initiale pour Avant Droit
    m_avantGauche(1.0), // Valeur initiale pour Avant Gauche
    m_arriereDroit(6.0), // Valeur initiale pour Arrière Droit
    m_arriereGauche(5.0), // Valeur initiale pour Arrière Gauche
    m_coteDroit(0.3), // Valeur initiale pour Côté Droit
    m_coteGauche(1.5) // Valeur initiale pour Côté Gauche
{
    m_serialPort = new QSerialPort(this);
    m_serialPort->setPortName("/dev/ttyUSB0"); // Remplacez par le port correct
    m_serialPort->setBaudRate(QSerialPort::Baud9600);
    m_serialPort->setDataBits(QSerialPort::Data8);
    m_serialPort->setParity(QSerialPort::NoParity);
    m_serialPort->setStopBits(QSerialPort::OneStop);
    m_serialPort->setFlowControl(QSerialPort::NoFlowControl);

    connect(m_serialPort, &QSerialPort::readyRead, this, &UltrasonSensor::readSerialData);

    if (!m_serialPort->open(QIODevice::ReadOnly)) {
        qDebug() << "Failed to open port" << m_serialPort->portName() << ", error:" << m_serialPort->errorString();
    }
    else {
        qDebug() << "Port ouvert avec succès" << m_serialPort->portName();
    }

}
void UltrasonSensor::readSerialData()
{
    while (m_serialPort->canReadLine()) {
        QByteArray line = m_serialPort->readLine().trimmed();
        qDebug() << "Received line:" << line; // Debugging line

        // Vérifiez si la ligne contient les informations attendues
        if (line.startsWith("Distance 1:")) {
            bool ok;
            double distance1 = line.split(':')[1].trimmed().split(' ')[0].toDouble(&ok);
            if (ok) {
                qDebug() << distance1; // Debugging line
                setAvantDroit(distance1);
                setAvantGauche(distance1);
            }
        }
        else if (line.startsWith("Distance 2:")) {
            bool ok;
            double distance2 = line.split(':')[1].trimmed().split(' ')[0].toDouble(&ok);
            if (ok) {
                qDebug() << distance2; // Debugging line
                setArriereDroit(distance2);
                setArriereGauche(distance2);
            }
        }
        else if (line.startsWith("Distance 3:")) {
            bool ok;
            double distance3 = line.split(':')[1].trimmed().split(' ')[0].toDouble(&ok);
            if (ok) {
                qDebug() << distance3; // Debugging line
                setCoteDroit(distance3);
                setCoteGauche(distance3);
            }
        }
    }
}


double UltrasonSensor::avantDroit() const { return m_avantDroit; }
void UltrasonSensor::setAvantDroit(double distance) {
    if (qFabs(m_avantDroit - distance) > 1e-6) {
        m_avantDroit = distance;
        //updateCouleurEtIntensite();
        emit avantDroitChanged();
    }
}

double UltrasonSensor::avantGauche() const { return m_avantGauche; }
void UltrasonSensor::setAvantGauche(double distance) {
    if (qFabs(m_avantGauche - distance) > 1e-6) {
        m_avantGauche = distance;
        //updateCouleurEtIntensite();
        emit avantGaucheChanged();
    }
}

double UltrasonSensor::arriereDroit() const { return m_arriereDroit; }
void UltrasonSensor::setArriereDroit(double distance) {
    if (qFabs(m_arriereDroit - distance) > 1e-6) {
        m_arriereDroit = distance;
        //updateCouleurEtIntensite();
        emit arriereDroitChanged();
    }
}

double UltrasonSensor::arriereGauche() const { return m_arriereGauche; }
void UltrasonSensor::setArriereGauche(double distance) {
    if (qFabs(m_arriereGauche - distance) > 1e-6) {
        m_arriereGauche = distance;
        //updateCouleurEtIntensite();
        emit arriereGaucheChanged();
    }
}

double UltrasonSensor::coteDroit() const { return m_coteDroit; }
void UltrasonSensor::setCoteDroit(double distance) {
    if (qFabs(m_coteDroit - distance) > 1e-6) {
        m_coteDroit = distance;
        //updateCouleurEtIntensite();
        emit coteDroitChanged();
    }
}

double UltrasonSensor::coteGauche() const { return m_coteGauche; }
void UltrasonSensor::setCoteGauche(double distance) {
    if (qFabs(m_coteGauche - distance) > 1e-6) {
        m_coteGauche = distance;
        //updateCouleurEtIntensite();
        emit coteGaucheChanged();
    }
}
