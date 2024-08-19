import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import Theme 1.0

import "controls"
import "components"
import "screens"
Item {
    id: root
    anchors.fill: parent
    signal powerOff()
    property int rotationSpeed: 2000 // Vitesse initiale en millisecondes
    property string imageSource: "qrc:/assets/image/clima.svg" // Définir la source initiale
    property color indicatorColor: "#FFFFFF" // Définir la couleur initiale
    property bool isFirstState: true // Suivre l'état actuel

    function createSettingsDialog() {
        var component = Qt.createComponent("qrc:/components/SettingsDialog.qml");
        if (component.status === Component.Ready) {
            var win = component.createObject(root);
            if (win !== null) {
                win.show();
            } else {
                console.error("Error: Could not create the SettingsDialog object");
            }
        } else if (component.status === Component.Error) {
            console.error("Error loading component: " + component.errorString());
        }
    }


    Item {
        id: bottomBar
        anchors.bottom: root.bottom
        width: root.width
        height: root.height * 0.08

        Item {
            id: actialogo
            width: bottomBar.width * 0.1
            height: bottomBar.height
            anchors.left: bottomBar.left
            Image {
                id: actia
                anchors.fill: parent
                source: "qrc:/assets/actia logo/logo Actia.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Item {
            id: clima
            width: bottomBar.width * 0.1
            height: bottomBar.height
            anchors.left: actialogo.right
            anchors.leftMargin: 100
            Image {
                id: climaimg
                anchors.fill: parent
                source: imageSource
                fillMode: Image.PreserveAspectFit
            }
            MouseArea {
                id: mouseClima
                hoverEnabled: true
                acceptedButtons: Qt.LeftButton
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor

                onPressed: {
                    if (isFirstState) {
                        imageSource = "qrc:/assets/image/defrost.svg"
                        indicatorColor = "lightblue" // Changer la couleur pour défroster
                        isFirstState = false // Passer à l'état suivant
                    } else if (imageSource === "qrc:/assets/image/defrost.svg") {
                        imageSource = "qrc:/assets/image/heater.svg"
                        indicatorColor = "#FF474C" // Changer la couleur pour chauffage
                    } else {
                        imageSource = "qrc:/assets/image/clima.svg"
                        indicatorColor = "white" // Revenir à l'état initial
                        isFirstState = true // Réinitialiser à l'état initial
                    }
                }
            }
        }

        SpinningFan {
            id: fan
            width: bottomBar.width * 0.1
            height: bottomBar.height
            anchors.left: clima.right
            anchors.leftMargin: 50

            // Bind the isActive property to determine if the fan should rotate
            isActive: imageSource === "qrc:/assets/image/defrost.svg" || imageSource === "qrc:/assets/image/heater.svg"
        }

        LeftSeatControl {
            id: leftSeatComponent
            width: bottomBar.width * 0.1
            height: bottomBar.height
            anchors.left: fan.right
            anchors.leftMargin: 100
        }


        RightSeatControl {
            id: rightSeatComponent
            width: bottomBar.width * 0.1
            height: bottomBar.height
            anchors.left: leftSeatComponent.right
            anchors.leftMargin: 100
        }

        VolumeControl {
            id: volumecontrol
            width: bottomBar.width * 0.1
            height: bottomBar.height
            anchors.left: rightSeatComponent.right
            anchors.leftMargin: 100
        }


        Battery {
            id: batterylevel
            width: bottomBar.width * 0.1
            height: bottomBar.height
            anchors.left: volumecontrol.right
            anchors.leftMargin: 100
        }
    }


    Item{
        //color: "#BDD248"
        anchors.bottom: bottomBar.top
        width: parent.width
        height: parent.height - root.height * 0.1
        RowLayout {
            anchors.fill: parent
            spacing: 0
            Item {
                Layout.preferredWidth: parent.width * 0.1
                Layout.preferredHeight: parent.height

                ColumnLayout {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width
                    height: parent.height
                    Item {Layout.preferredHeight: 10 }


                    HomeButton {
                        checked: true
                        setIcon: "qrc:/assets/icons/homeScreen/home.png"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: sideLoader.sourceComponent = homeScreen
                    }
                    HomeButton {
                        setIcon: "qrc:/assets/icons/homeScreen/map.png"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: sideLoader.sourceComponent = navigationScreen
                    }
                    HomeButton {
                        setIcon: "qrc:/assets/icons/homeScreen/camera.png"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: sideLoader.sourceComponent = cameraStreaming
                    }

                    HomeButton {
                        setIcon: "qrc:/assets/icons/homeScreen/sensor.png"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: sideLoader.sourceComponent = sensor
                    }
                    HomeButton {
                        setIcon: "qrc:/assets/icons/homeScreen/gear.png"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: createSettingsDialog()
                    }

                    HomeButton {
                        setIcon: "qrc:/assets/icons/homeScreen/bus.png"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: sideLoader.sourceComponent = detectionscreen
                    }
                    HomeButton {
                        setIcon: "qrc:/assets/icons/homeScreen/motor.png"
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                        onClicked: sideLoader.sourceComponent = rosScreen
                    }

                    Item {Layout.preferredHeight: 10 }
                }
            }
            Item {
                Layout.preferredWidth: parent.width - (parent.width * 0.1)
                Layout.preferredHeight: parent.height

                Loader {
                    id: sideLoader
                    anchors.fill: parent
                    sourceComponent: homeScreen
                }
            }

        }
    }
    Component {
        id: homeScreen
        HomeScreen {}
    }
    Component {
        id: navigationScreen
        NavigationScreen {}
    }
    Component {
        id: cameraStreaming
        CameraStreaming {}
    }
    Component {
        id: sensor
        UltrasonicSensor {}
    }
    // Component {
    //     id: personDetection
    //     PersoncountingScreen {}
    // }
    // Component {
    //     id: objectDetection
    //     ObjectDetectionScreen{}
    // }
    Component {
        id: detectionscreen
        DetectionScreen{}
    }

    Component {
        id: rosScreen
        RosScreen {}
    }
}

