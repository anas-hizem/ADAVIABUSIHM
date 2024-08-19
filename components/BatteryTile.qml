import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Rectangle {
    property int vehicalMode: 0

    color: "#151515"
    Layout.preferredWidth: 450
    Layout.preferredHeight: 350
    radius: 15
    Image {
        id: backgroundImage
        anchors.fill: parent
        source: "qrc:/assets/background/BatteryBackground.jpg"
        fillMode: Image.PreserveAspectCrop
        opacity: 0.7
        property bool rounded: true

        layer.enabled: rounded
        layer.effect: OpacityMask {
            maskSource: Item {
                width: backgroundImage.width
                height: backgroundImage.height

                Rectangle {
                    anchors.centerIn: parent
                    width: backgroundImage.width
                    height: backgroundImage.height
                    radius: 20
                }
            }
        }
    }

    RowLayout {
        anchors.centerIn: parent
        spacing: 50

        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 25

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("Battery")
                font.pixelSize: 25
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }

            Image {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                source: {
                    switch(vehicalMode){
                    case 0:
                        return "qrc:/assets/battery/BatteryIcon.svg";
                    case 1:
                        return "qrc:/assets/battery/BatteryIcon_sport.svg";
                    case 2:
                        return "qrc:/assets/battery/BatteryIcon_normal.svg";
                    case 3:
                        return "qrc:/assets/battery/BatteryIcon_parking.svg";
                    default:
                        return "qrc:/assets/battery/BatteryIcon.svg";
                    }
                }
                Image {
                    visible: vehicalMode === 0 || vehicalMode === 1 || vehicalMode === 2 || vehicalMode === 3
                    source: {
                        switch(vehicalMode){
                        case 0:
                            return "qrc:/assets/battery/Eco Leaf Icon.svg";
                        case 1:
                            return "qrc:/assets/battery/Eco Leaf Icon.svg";
                        case 2:
                            return "qrc:/assets/battery/Eco Leaf Icon 2.svg";
                        case 3:
                            return "qrc:/assets/battery/Eco Leaf Icon.svg";
                        default:
                            return "qrc:/assets/battery/Eco Leaf Icon.svg";
                        }
                    }
                    anchors.centerIn: parent
                }
            }

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("72%")
                font.pixelSize: 25
                font.weight: Font.Bold
                font.family: "Lato"
                color: {
                    switch(vehicalMode){
                    case 0:
                        return "#A1CD3C";
                    case 1:
                        return "#2BC3EA";
                    case 2:
                        return "#EDF4F5";
                    case 3:
                        return "#F79027";
                    default:
                        return "#EDF4F5";
                    }
                }
            }
        }

        ColumnLayout {
            spacing: 15
            Layout.alignment: Qt.AlignHCenter

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("Est. Distance")
                font.pixelSize: 23
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }
            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("240 miles left")
                font.pixelSize: 19
                font.weight: Font.Bold
                font.family: "Lato"
                color: {
                    switch(vehicalMode){
                    case 0:
                        return "#A1CD3C";
                    case 1:
                        return "#2BC3EA";
                    case 2:
                        return "#EDF4F5";
                    case 3:
                        return "#F79027";
                    default:
                        return "#EDF4F5";
                    }
                }
            }

            Item { Layout.preferredHeight: 20 }

            RowLayout {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                Text {
                    Layout.alignment: Qt.AlignLeft
                    text: qsTr("with")
                    font.pixelSize: 15
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }

                Text {
                    Layout.alignment: Qt.AlignLeft
                    text: {
                        switch(vehicalMode){
                        case 0:
                            return qsTr("Normal Mode:");
                        case 1:
                            return qsTr("Sport Mode:");
                        case 2:
                            return qsTr("Echo Mode:");
                        case 3:
                            return qsTr("Parking Mode:");
                        default:
                            return qsTr("Normal Mode:");
                        }
                    }
                    font.pixelSize: 15
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: {
                        switch(vehicalMode){
                        case 0:
                            return "#A1CD3C";
                        case 1:
                            return "#2BC3EA";
                        case 2:
                            return "#EDF4F5";
                        case 3:
                            return "#F79027";
                        default:
                            return "#EDF4F5";
                        }
                    }
                }
            }

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("205 miles left")
                font.pixelSize: 19
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }

            Item { Layout.preferredHeight: 5 }

            RowLayout {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                Text {
                    Layout.alignment: Qt.AlignLeft
                    text: qsTr("with")
                    font.pixelSize: 15
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }

                Text {
                    Layout.alignment: Qt.AlignLeft
                    text: {
                        switch(vehicalMode){
                        case 0:
                            return qsTr("Sport Mode:");
                        case 1:
                            return qsTr("Echo Mode:");
                        case 2:
                            return qsTr("Parking Mode:");
                        case 3:
                            return qsTr("Normal Mode:");
                        default:
                            return qsTr("Normal Mode:");
                        }
                    }
                    font.pixelSize: 15
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: {
                        switch(vehicalMode){
                        case 0:
                            return "#2BC3EA";
                        case 1:
                            return "#A1CD3C";
                        case 2:
                            return "#F79027";
                        case 3:
                            return "#A1CD3C";
                        default:
                            return "#EDF4F5";
                        }
                    }
                }
            }

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("185 miles left")
                font.pixelSize: 19
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }
        }
    }
}
