import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import "../controls"
Item {
    clip: true
    width: 500
    height: 250
    ColumnLayout{
        spacing: 15
        anchors.bottom: parent.bottom
        RowLayout{
            spacing: 10
            IconButton{
                implicitHeight: 65
                implicitWidth: 65
                iconHeight: 42
                iconWidth: 42
                roundIcon:true
                checkable: true
                iconBackground: checked ? "#BDD248": "#262626"
                setIcon: "qrc:/assets/icons/homeScreen/bluetooth.svg"
            }
            IconButton{
                implicitHeight: 65
                implicitWidth: 65
                iconHeight: 42
                iconWidth: 42
                roundIcon:true
                checkable: true
                iconBackground: checked ? "#BDD248": "#262626"
                setIcon: "qrc:/assets/icons/homeScreen/headlights-small.svg"
            }
            IconButton{
                implicitHeight: 65
                implicitWidth: 65
                iconHeight: 42
                iconWidth: 42
                roundIcon:true
                checkable: true
                iconBackground: checked ? "#BDD248": "#262626"
                setIcon: "qrc:/assets/icons/homeScreen/mirror.svg"
            }
        }
        RowLayout{
            spacing: 10
            width: parent.width
            IconButton{
                implicitHeight: 65
                implicitWidth: 65
                iconHeight: 32
                iconWidth: 32
                roundIcon:true
                checkable: true
                iconBackground: checked ? "#BDD248": "#262626"
                setIcon: "qrc:/assets/icons/homeScreen/volume-mute-svgrepo-com.svg"
            }
            IconButton{
                implicitHeight: 65
                implicitWidth: 65
                iconHeight: 32
                iconWidth: 32
                roundIcon:true
                checkable: true
                iconBackground: checked ? "#BDD248": "#262626"
                setIcon: "qrc:/assets/icons/homeScreen/phone-call-fill-svgrepo-com.svg"
            }
            IconButton{
                implicitHeight: 65
                implicitWidth: 65
                iconHeight: 32
                iconWidth: 32
                roundIcon:true
                checkable: true
                iconBackground: checked ? "#BDD248": "#262626"
                setIcon: "qrc:/assets/icons/homeScreen/extinguisher.svg"
            }
            IconButton{
                implicitHeight: 65
                implicitWidth: 65
                iconHeight: 42
                iconWidth: 42
                roundIcon:true
                checkable: true
                iconBackground: checked ? "#BDD248": "#262626"
                setIcon: "qrc:/assets/icons/homeScreen/steering wheel-small.svg"
            }
        }
    }
}

