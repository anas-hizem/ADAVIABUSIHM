import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "../components"

Item {
    anchors.fill: parent

    GridLayout {
        id: grid
        anchors.fill: parent
        anchors.leftMargin: 30
        anchors.rightMargin: 100
        anchors.bottomMargin: 20
        anchors.topMargin: 30
        rows: 1
        columns: 1
        rowSpacing: 10
        columnSpacing: 10
        Layout.alignment: Qt.AlignCenter

        ColumnLayout {
            spacing: 10
            Layout.column: 0
            Layout.row: 0
            Layout.alignment: Qt.AlignHCenter

            SettingsDialog {
                id: settings
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

        }
    }
}

