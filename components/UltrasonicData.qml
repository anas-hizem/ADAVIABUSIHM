import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    color: "#151515"
    width: 450
    height: 400
    radius: 15

    // Lier les propriétés à l'objet UltrasonSensor
    property double frontRight: ultrasonSensor ? ultrasonSensor.avantDroit : 0
    property double frontLeft: ultrasonSensor ? ultrasonSensor.avantGauche : 0
    property double rearRight: ultrasonSensor ? ultrasonSensor.arriereDroit : 0
    property double rearLeft: ultrasonSensor ? ultrasonSensor.arriereGauche : 0
    property double sideRight: ultrasonSensor ? ultrasonSensor.coteDroit : 0
    property double sideLeft: ultrasonSensor ? ultrasonSensor.coteGauche : 0

    Column {
        anchors.fill: parent
        spacing: 20
        anchors.centerIn: parent

        Item {
            id: text
            width: 450
            height: 60
            Text {
                text: "Ultrasonic Sensor Data"
                font.family: 'lato'
                color: "white"
                font.bold: true
                font.pointSize: 16
                anchors.centerIn: parent
            }
        }
        Grid {
            columns: 2
            rows: 3
            spacing: 10
            anchors.horizontalCenter: parent.horizontalCenter

            // Front Right Sensor
            Item {
                width: 200
                height: 90

                Column {
                    anchors.centerIn: parent
                    spacing: 10

                    Text {
                        text: "Front Right"
                        font.bold: true
                        font.pointSize: 14
                        color: "white"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        width: 120
                        height: 30
                        color: "#eee"
                        border.color: "#aaa"
                        radius: 10

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: (frontRight < 1) ? "red" : (frontRight < 2) ? "orange" : "green"
                            radius: 10
                        }

                        Text {
                            anchors.centerIn: parent
                            text: frontRight.toFixed(1) + " m"
                            color: "white"
                            font.family: 'lato'
                            font.pointSize: 14
                        }
                    }
                }
            }

            // Front Left Sensor
            Item {
                width: 200
                height: 90

                Column {
                    anchors.centerIn: parent
                    spacing: 10

                    Text {
                        text: "Front Left"
                        font.bold: true
                        font.pointSize: 14
                        color: "white"
                        font.family: 'lato'
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        width: 120
                        height: 30
                        color: "#eee"
                        border.color: "#aaa"
                        radius: 10

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: (frontLeft < 1) ? "red" : (frontLeft < 2) ? "orange" : "green"
                            radius: 10
                        }

                        Text {
                            anchors.centerIn: parent
                            text: frontLeft.toFixed(1) + " m"
                            color: "white"
                            font.family: 'lato'
                            font.pointSize: 14
                        }
                    }
                }
            }

            // Side Right Sensor
            Item {
                width: 200
                height: 90

                Column {
                    anchors.centerIn: parent
                    spacing: 10

                    Text {
                        text: "Side Right"
                        font.bold: true
                        font.pointSize: 14
                        color: "white"
                        font.family: 'lato'
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        width: 120
                        height: 30
                        color: "#eee"
                        border.color: "#aaa"
                        radius: 10

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: (sideRight < 1) ? "red" : (sideRight < 2) ? "orange" : "green"
                            radius: 10
                        }

                        Text {
                            anchors.centerIn: parent
                            text: sideRight.toFixed(1) + " m"
                            color: "white"
                            font.family: 'lato'
                            font.pointSize: 14
                        }
                    }
                }
            }

            // Side Left Sensor
            Item {
                width: 200
                height: 90

                Column {
                    anchors.centerIn: parent
                    spacing: 10

                    Text {
                        text: "Side Left"
                        font.bold: true
                        font.pointSize: 14
                        color: "white"
                        font.family: 'lato'
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        width: 120
                        height: 30
                        color: "#eee"
                        border.color: "#aaa"
                        radius: 10

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: (sideLeft < 1) ? "red" : (sideLeft < 2) ? "orange" : "green"
                            radius: 10
                        }

                        Text {
                            anchors.centerIn: parent
                            text: sideLeft.toFixed(1) + " m"
                            color: "white"
                            font.pointSize: 14
                            font.family: 'lato'
                        }
                    }
                }
            }

            // Rear Right Sensor
            Item {
                width: 200
                height: 90

                Column {
                    anchors.centerIn: parent
                    spacing: 10

                    Text {
                        text: "Rear Right"
                        font.bold: true
                        font.pointSize: 14
                        color: "white"
                        font.family: 'lato'
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        width: 120
                        height: 30
                        color: "#eee"
                        border.color: "#aaa"
                        radius: 10

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: (rearRight < 1) ? "red" : (rearRight < 2) ? "orange" : "green"
                            radius: 10
                        }

                        Text {
                            anchors.centerIn: parent
                            text: rearRight.toFixed(1) + " m"
                            color: "white"
                            font.pointSize: 14
                            font.family: 'lato'
                        }
                    }
                }
            }

            // Rear Left Sensor
            Item {
                width: 200
                height: 90

                Column {
                    anchors.centerIn: parent
                    spacing: 10

                    Text {
                        text: "Rear Left"
                        font.bold: true
                        font.pointSize: 14
                        color: "white"
                        font.family: 'lato'
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        width: 120
                        height: 30
                        color: "#eee"
                        border.color: "#aaa"
                        radius: 10

                        Rectangle {
                            width: parent.width
                            height: parent.height
                            color: (rearLeft < 1) ? "red" : (rearLeft < 2) ? "orange" : "green"
                            radius: 10
                        }

                        Text {
                            anchors.centerIn: parent
                            text: rearLeft.toFixed(1) + " m"
                            color: "white"
                            font.pointSize: 14
                            font.family: 'lato'
                        }
                    }
                }
            }
        }
    }
}
