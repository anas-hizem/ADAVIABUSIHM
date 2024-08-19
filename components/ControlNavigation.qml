import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.15
import QtQuick.Layouts 1.15
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras.Private 1.0
import QtGraphicalEffects 1.15

import "../components"

Item {
    anchors.fill: parent
    property int gaugeValue: 0

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
                text: qsTr("Motor control")
                font.pixelSize: 30
                font.family: 'lato'
                font.italic: true
                // anchors.horizontalCenter: parent.horizontalCenter
                // anchors.top: parent.top
                Layout.alignment: Qt.AlignHCenter
                color: 'white'
            }
            Rectangle {
                id :root
                color: "#151515"
                width: 700
                height: 700
                radius: 15

                Column {
                    anchors.centerIn: parent
                    spacing: 10

                    CircularGauge {
                        id: gauge1
                        value: speedSlider.value * 10
                        maximumValue: 160
                        Layout.alignment: Qt.AlignHCenter
                        anchors.horizontalCenter: parent.horizontalCenter

                        style: CircularGaugeStyle {
                            tickmarkLabel: Text {
                                font.pixelSize: Math.max(6, outerRadius * 0.1)
                                text: styleData.value
                                color: styleData.value >= 120 ? "#e34c22" : "#FFFFFF"
                            }

                            needle: Rectangle {
                                y: outerRadius * 0.15
                                implicitWidth: outerRadius * 0.03
                                implicitHeight: outerRadius * 0.9
                                color: "red"
                            }

                            foreground: Item {
                                Rectangle {
                                    width: outerRadius * 0.2
                                    height: width
                                    radius: width / 2
                                    color: "#262626"
                                    anchors.centerIn: parent
                                }
                            }
                        }
                    }

                    Slider {
                        id: speedSlider
                        from: 0
                        to: 16
                        value: 0
                        stepSize: 0.1
                        anchors.horizontalCenter: parent.horizontalCenter

                        onValueChanged: {
                            rclComm.set_speed(speedSlider.value)
                        }
                    }
                    Row {
                        spacing: 20

                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Text {
                                anchors.centerIn: parent
                                text: "Avant Gauche"
                                color: "white"
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rclComm._pub_msgs(5)
                            }
                        }

                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Text {
                                anchors.centerIn: parent
                                text: "Avant"
                                color: "white"
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rclComm._pub_msgs(0)
                            }
                        }

                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Text {
                                anchors.centerIn: parent
                                text: "Avant Droite"
                                color: "white"
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rclComm._pub_msgs(6)
                            }
                        }
                    }

                    Row {
                        spacing: 20

                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Text {
                                anchors.centerIn: parent
                                text: "Gauche"
                                color: "white"
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rclComm._pub_msgs(2)
                            }
                        }
                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Image {
                                id: stopomg
                                source: "qrc:/assets/detection/stop_panel.png"
                                anchors.centerIn: parent
                                anchors.fill:parent
                                fillMode: Image.PreserveAspectFit
                                MouseArea {
                                    anchors.fill: parent
                                    cursorShape: Qt.PointingHandCursor
                                }
                            }
                        }


                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Text {
                                anchors.centerIn: parent
                                text: "Droite"
                                color: "white"
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rclComm._pub_msgs(3)
                            }
                        }
                    }

                    Row {
                        spacing: 20

                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Text {
                                anchors.centerIn: parent
                                text: "Arrière Gauche"
                                color: "white"
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rclComm._pub_msgs(7)
                            }
                        }

                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Text {
                                anchors.centerIn: parent
                                text: "Arrière"
                                color: "white"
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rclComm._pub_msgs(1)
                            }
                        }

                        Rectangle {
                            width: 120
                            height: 50
                            color: "#262626"
                            radius: 10
                            Text {
                                anchors.centerIn: parent
                                text: "Arrière Droite"
                                color: "white"
                            }
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: rclComm._pub_msgs(8)
                            }
                        }
                    }

                }
            }
        }
    }
}

