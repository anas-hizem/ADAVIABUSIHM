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
        columns: 2
        rowSpacing: 10
        columnSpacing: 10
        Layout.alignment: Qt.AlignHCenter

        ColumnLayout {
            spacing: 10
            Layout.column: 0
            Layout.row: 0
            Layout.alignment: Qt.AlignHCenter

            NavetteImage {}

            RowLayout {
                spacing: 20
                Layout.alignment: Qt.AlignHCenter

                BusSpeed {}

                BusControl {}
            }

        }

        ColumnLayout {
            spacing: 20
            Layout.column: 1
            Layout.row: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter

            DateTimeTile {}

            BatteryTile {}

            MeteoWidget {}
        }
    }
}
