#ifndef ULTRASONSENSOR_H
#define ULTRASONSENSOR_H

#include <QObject>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QColor>
#include <QVariantMap>

class UltrasonSensor : public QObject
{
    Q_OBJECT
    Q_PROPERTY(double avantDroit READ avantDroit WRITE setAvantDroit NOTIFY avantDroitChanged)
    Q_PROPERTY(double avantGauche READ avantGauche WRITE setAvantGauche NOTIFY avantGaucheChanged)
    Q_PROPERTY(double arriereDroit READ arriereDroit WRITE setArriereDroit NOTIFY arriereDroitChanged)
    Q_PROPERTY(double arriereGauche READ arriereGauche WRITE setArriereGauche NOTIFY arriereGaucheChanged)
    Q_PROPERTY(double coteDroit READ coteDroit WRITE setCoteDroit NOTIFY coteDroitChanged)
    Q_PROPERTY(double coteGauche READ coteGauche WRITE setCoteGauche NOTIFY coteGaucheChanged)

public:
    explicit UltrasonSensor(QObject *parent = nullptr);

    double avantDroit() const;
    void setAvantDroit(double distance);

    double avantGauche() const;
    void setAvantGauche(double distance);

    double arriereDroit() const;
    void setArriereDroit(double distance);

    double arriereGauche() const;
    void setArriereGauche(double distance);

    double coteDroit() const;
    void setCoteDroit(double distance);

    double coteGauche() const;
    void setCoteGauche(double distance);

    QString getColorForDistance(double distance) const;

    Q_INVOKABLE QVariantMap getWaveImagesForDistance(double distance) const;

signals:
    void avantDroitChanged();
    void avantGaucheChanged();
    void arriereDroitChanged();
    void arriereGaucheChanged();
    void coteDroitChanged();
    void coteGaucheChanged();


private slots :
    void readSerialData();

private:
    double m_avantDroit;
    double m_avantGauche;
    double m_arriereDroit;
    double m_arriereGauche;
    double m_coteDroit;
    double m_coteGauche;

    QSerialPort *m_serialPort;
};

#endif // ULTRASONSENSOR_H
