import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.VirtualKeyboard 2.15
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
        columns: 1
        rowSpacing: 20
        columnSpacing: 10

        ColumnLayout {
            spacing: 20
            Layout.row: 0
            Layout.column: 0
            Layout.columnSpan: 1
            Layout.rowSpan: 1

            MapTile {
                id: mapTile
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
