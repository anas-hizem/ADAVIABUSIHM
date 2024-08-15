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
                text: qsTr("Bus door camera for passenger counting")
                font.pixelSize: 30
                font.family: 'lato'
                font.italic: true
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                color: 'white'
            }
            Rectangle {
                id :root
                color: "#151515"
                width: 700
                height: 500
                radius: 15

                Button {
                    text: "Start people counting"
                    anchors.centerIn: parent
                    onClicked: {
                        //pyqtLauncher.launchPyQtAppPersonDetection()
                    }
                }
            }

            RowLayout {
                spacing: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter
                Rectangle {
                    id: root1
                    color: "#151515"
                    width: 200
                    height: 200
                    radius: 15

                    RowLayout {
                        anchors.fill: parent
                        anchors.margins: 10

                        Rectangle {
                            width: (root1.width - 20) / 2 // Adjust width to account for margins
                            height: root1.height - 20
                            radius: 15
                            color: "#151515"

                            Image {
                                anchors.centerIn: parent
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "qrc:/assets/detection/entry.png"
                            }
                        }

                        Rectangle {
                            width: (root1.width - 20) / 2 // Adjust width to account for margins
                            height: root1.height - 20
                            radius: 15
                            color: "#151515"

                            Text {
                                id: objectText
                                text: "0"
                                anchors.centerIn: parent
                                font.pixelSize: 60
                                color: 'white'
                                font.family: "Lato"
                                font.weight: Font.ExtraBold
                            }
                        }
                    }

                    // Connexion au signal objectReceived pour mettre à jour le texte et l'image
                    Connections {
                        target: tcpSocket
                        function onCountReceived(current, entry, exit) {
                            objectText.text = entry
                        }
                    }
                }
                Rectangle {
                    id: root2
                    color: "#151515"
                    width: 200
                    height: 200
                    radius: 15

                    RowLayout {
                        anchors.fill: parent
                        anchors.margins: 10

                        Rectangle {
                            width: (root2.width - 20) / 2 // Adjust width to account for margins
                            height: root2.height - 20
                            radius: 15
                            color: "#151515"

                            Image {
                                anchors.centerIn: parent
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "qrc:/assets/detection/exit.png"
                            }
                        }

                        Rectangle {
                            width: (root2.width - 20) / 2 // Adjust width to account for margins
                            height: root2.height - 20
                            radius: 15
                            color: "#151515"

                            Text {
                                id: objectText2
                                text: "0"
                                anchors.centerIn: parent
                                font.pixelSize: 60
                                color: 'white'
                                font.family: "Lato"
                                font.weight: Font.ExtraBold
                            }
                        }
                    }

                    // Connexion au signal objectReceived pour mettre à jour le texte et l'image
                    Connections {
                        target: tcpSocket
                        function onCountReceived(current, entry, exit) {
                            objectText.text = exit
                        }
                    }
                }
                Rectangle {
                    id: root3
                    color: "#151515"
                    width: 200
                    height: 200
                    radius: 15

                    RowLayout {
                        anchors.fill: parent
                        anchors.margins: 10

                        Rectangle {
                            width: (root3.width - 20) / 2 // Adjust width to account for margins
                            height: root3.height - 20
                            radius: 15
                            color: "#151515"

                            Image {
                                anchors.centerIn: parent
                                anchors.fill: parent
                                fillMode: Image.PreserveAspectFit
                                source: "qrc:/assets/detection/seat-belt.png"
                            }
                        }

                        Rectangle {
                            width: (root3.width - 20) / 2 // Adjust width to account for margins
                            height: root3.height - 20
                            radius: 15
                            color: "#151515"

                            Text {
                                id: objectText3
                                text: "0"
                                anchors.centerIn: parent
                                font.pixelSize: 60
                                color: 'white'
                                font.family: "Lato"
                                font.weight: Font.ExtraBold
                            }
                        }
                    }

                    // Connexion au signal objectReceived pour mettre à jour le texte et l'image
                    Connections {
                        target: tcpSocket
                        function onCountReceived(current, entry, exit) {
                            objectText.text = current
                        }
                    }
                }
            }
        }
    }
}



