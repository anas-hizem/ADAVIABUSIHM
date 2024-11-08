import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

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
            Layout.columnSpan: 2
            Layout.rowSpan: 1
            Layout.row: 0
            Layout.column: 0
            Layout.alignment: Qt.AlignHCenter


            Text {
                text: qsTr("Reception and display of lidar data")
                font.pixelSize: 30
                font.family: 'lato'
                font.italic: true
                // anchors.horizontalCenter: parent.horizontalCenter
                // anchors.top: parent.top
                Layout.alignment: Qt.AlignHCenter
                color: 'white'
            }
            Rectangle {
                color: "#151515"
                width: 700
                height: 700
                radius: 15
                Image {
                    id: mapImage
                    anchors.fill: parent
                    source: "qrc:/assets/ros/gride.jpg"

                    property bool rounded: true
                    layer.enabled: rounded
                    layer.effect: OpacityMask {
                        maskSource: Item {
                            width: mapImage.width
                            height: mapImage.height

                            Rectangle {
                                anchors.centerIn: parent
                                width: mapImage.width
                                height: mapImage.height
                                radius: 20
                            }
                        }
                    }
                }
            }
        }
    }
}



