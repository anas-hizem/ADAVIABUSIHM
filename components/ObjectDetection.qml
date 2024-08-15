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
                text: qsTr("Bus front camera for object detection")
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
                    text: "Start object detection"
                    anchors.centerIn: parent
                    onClicked: {
                        // Appeler une méthode C++ pour lancer l'application PyQt5
                        //pyqtLauncher.launchPyQtAppPanelDetection()
                    }
                }
            }


            RowLayout {
                spacing: 20
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignHCenter

                Rectangle {
                    id:root1
                    color: "#151515"
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 200
                    radius: 15

                    // Image to display corresponding object
                    Image {
                        id: objectImage1
                        anchors.fill : parent
                        anchors.margins: 10
                        source: "qrc:/assets/detection/personWalk.png"
                        fillMode: Image.PreserveAspectFit
                        opacity : 0.1
                    }

                    // Connexion au signal objectReceived pour mettre à jour le texte et l'image
                    Connections {
                        target: tcpSocket
                        function onObjectReceived(className, score) {
                            switch (className) {
                                case "person":
                                    objectImage1.source = "qrc:/assets/detection/personWalk.png";
                                    objectImage1.opacity = 1;
                                    break;
                                default:
                                    objectImage1.source = "qrc:/assets/detection/personWalk.png";
                                    objectImage1.opacity = 0.1;
                            }
                        }
                    }
                }


                Rectangle {
                    id:root2
                    color: "#151515"
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 200
                    radius: 15

                    // Image to display corresponding object
                    Image {
                        id: objectImage2
                        //anchors.centerIn: parent
                        anchors.fill : parent
                        // width: root.width
                        // height: root.height
                        anchors.margins: 10
                        source: "qrc:/assets/detection/stop_panel.png"
                        fillMode: Image.PreserveAspectFit
                        opacity : 0.1

                    }



                    // Connexion au signal objectReceived pour mettre à jour le texte et l'image
                    Connections {
                        target: tcpSocket
                        function onObjectReceived(className, score) {
                            switch (className) {
                                case "stop_panel":
                                    objectImage2.source = "qrc:/assets/detection/stop_panel.png";
                                    objectImage2.opacity = 1;
                                    break;
                                default:
                                    objectImage2.source = "qrc:/assets/detection/stop_panel.png";
                                    objectImage2.opacity = 0.1;
                            }
                        }
                    }
                }

                Rectangle {
                    id: root3
                    color: "#151515"
                    Layout.preferredWidth: 200
                    Layout.preferredHeight: 200
                    radius: 15

                    // Image to display corresponding object
                    Image {
                        id: objectImage3
                        anchors.fill : parent
                        anchors.margins: 10
                        source: "qrc:/assets/detection/Light.png"
                        fillMode: Image.PreserveAspectFit
                        opacity: 0.2
                    }

                    // Connexion au signal objectReceived pour mettre à jour le texte et l'image
                    Connections {
                        target: tcpSocket
                        function onObjectReceived(className, score) {
                            switch (className) {
                                case "green_sign":
                                    objectImage3.source = "qrc:/assets/detection/2LightsGreenLight.png";
                                    objectImage3.opacity = 1;
                                    break;
                                case "red_sign":
                                    objectImage3.source = "qrc:/assets/detection/2LightsRedLight.png";
                                    objectImage3.opacity = 1;
                                    break;
                                default:
                                    objectImage3.source = "qrc:/assets/detection/Light.png";
                                    objectImage3.opacity = 0.2;
                            }
                        }
                    }
                }


            }


        }


    }

}



