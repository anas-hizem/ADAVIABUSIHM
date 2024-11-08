import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15

import "../components"

Item {
    anchors.fill: parent
    GridLayout {
        id: grid
        anchors.fill: parent
        anchors.rightMargin: 50
        anchors.bottomMargin: 20
        anchors.topMargin: 30
        rows: 1
        columns: 2
        rowSpacing: 20
        columnSpacing: 10

        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            Text {
                text: qsTr("Ultrasonic sensor detection")
                font.pixelSize: 30
                font.family: 'lato'
                font.italic: true
                Layout.alignment: Qt.AlignHCenter
                color: 'white'
            }

            TopView {}

        }

        ColumnLayout {
            spacing: 10
            Layout.row: 0
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            UltrasonicData {}

            HelpPanel {}


        }
    }

}



