import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Rectangle {
    color: "#151515"
    width: 450
    height: 300
    radius: 15

    // Color Information
    Column {
        anchors.centerIn: parent
        spacing: 30

        // Title
        Text {
            text: "Ultrasonic Sensor Color Guide"
            font.bold: true
            font.pointSize: 15
            font.family: 'lato'
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        // Color Information
        Column {
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            // Green Color Section
            Row {
                spacing: 10

                Rectangle {
                    width: 50
                    height: 50
                    radius: 25
                    color: "green"
                    border.color: "black"
                }
                Text {
                    text: "Distance greater than 2 meters"
                    font.pointSize: 14
                    color: "white"
                    font.family: 'lato'
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            // Orange Color Section
            Row {
                spacing: 10

                Rectangle {
                    width: 50
                    height: 50
                    radius: 25
                    color: "orange"
                    border.color: "black"
                }
                Text {
                    text: "Distance between 1 and 2 meters"
                    font.pointSize: 14
                    color: "white"
                    font.family: 'lato'
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            // Red Color Section
            Row {
                spacing: 10

                Rectangle {
                    width: 50
                    height: 50
                    radius: 25
                    color: "red"
                    border.color: "black"
                }
                Text {
                    text: "Distance less than 1 meter"
                    font.pointSize: 14
                    color: "white"
                    font.family: 'lato'
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }
}
