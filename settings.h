#ifndef SETTINGS_H
#define SETTINGS_H

#include <QObject>
#include <QSettings>
#define IS_DARK "IS_DARK"
class Settings : public QObject
{
    Q_OBJECT
public:
    explicit Settings(QObject *parent = nullptr);
    Q_PROPERTY(bool isDark READ isDark WRITE setIsDark NOTIFY isDarkChanged FINAL)

    bool isDark() const;
public slots:
    void setIsDark(bool newIsDark);

signals:

    void isDarkChanged();
private:
    bool m_isDark;
    QSettings _settings;
};

#endif // SETTINGS_H
