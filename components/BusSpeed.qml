import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    clip: true
    width: 500
    height: 250

    signal batteryModeChanged(int mode)

    ColumnLayout {
        height: parent.height * 0.2
        spacing: -10

        FontLoader {
            id: digitalFont
            source: "qrc:/assets/font/DigitalNumbers-Regular.ttf"
        }

        Label {
            id: speedtext
            text: qsTr("Speed")
            font.pixelSize: 40
            color: "white"
            font.family: "lato"
            Layout.alignment: Qt.AlignLeft
        }

        RowLayout {
            spacing: 10

            Label {
                id: speedvalue
                text: qsTr("128")
                font.pixelSize: 110
                color: "white"
                font.family: digitalFont.name
                Layout.leftMargin: -60
                Layout.alignment: Qt.AlignLeft
            }

            Label {
                id: speedunity
                text: qsTr("km/h")
                font.pixelSize: 40
                color: "white"
                font.family: "lato"
                Layout.alignment: Qt.AlignRight
                Layout.bottomMargin: -95
            }
        }
    }

    LabelSelector {
        radius: 16
        setColors: "#439df3"
        anchors.horizontalCenter: parent.horizontalCenter
        lableList: ["N", "S", "E", "P"]
        anchors.bottom: parent.bottom

        onSignalModeChanged: {
            // Example: Change the battery mode based on selection
            if (index === 0) {
                batteryModeChanged(0);  // Normal Mode
            } else if (index === 1) {
                batteryModeChanged(1);  // Sports Mode
            } else if (index === 2) {
                batteryModeChanged(2);  // Eco Mode
            }else if (index === 3) {
                batteryModeChanged(3);  // Eco Mode
            }
        }
    }
}
