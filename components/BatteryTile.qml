import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Rectangle {
    property int vehicalMode: 0

    color: "#151515"
    Layout.preferredWidth: 450
    Layout.preferredHeight: 350
    radius: 15
    RowLayout {
        anchors.centerIn: parent
        spacing: 35

        ColumnLayout {
            Layout.alignment: Qt.AlignHCenter
            spacing: 25

            Text {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                text: qsTr("Battery")
                font.pixelSize: 23
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
                        return "qrc:/assets/battery/BatteryIcon_sports.svg";
                    case 2:
                        return "qrc:/assets/battery/BatteryIcon_normal.svg";

                    default:
                        return "qrc:/assets/battery/BatteryIcon.svg";
                    }
                }
                Image {
                    visible: vehicalMode === 0 || vehicalMode === 1
                    source: {
                        switch(vehicalMode){
                        case 0:
                            return "qrc:/assets/battery/Eco Leaf Icon.svg";
                        case 1:
                            return "qrc:/assets/battery/Sport Flag Icon_battery.svg";
                        case 2:
                            return "";

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
                font.pixelSize: 23
                font.weight: Font.Bold
                font.family: "Lato"
                color: {
                    switch(vehicalMode){
                    case 0:
                        return "#4EB93D";
                    case 1:
                        return "#00A3FF";
                    case 2:
                        return "#FFFFFF";

                    default:
                        return "#4EB93D";
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
                font.pixelSize: 17
                font.weight: Font.Bold
                font.family: "Lato"
                color: {
                    switch(vehicalMode){
                    case 0:
                        return "#4EB93D";
                    case 1:
                        return "#00A3FF";
                    case 2:
                        return "#FFFFFF";

                    default:
                        return "#4EB93D";
                    }
                }
            }

            Item {Layout.preferredHeight: 20}

            RowLayout {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                Text {
                    Layout.alignment: Qt.AlignLeft
                    text: qsTr("with")
                    font.pixelSize: 13
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }

                Text {
                    Layout.alignment: Qt.AlignLeft
                    text:{
                        switch(vehicalMode){
                        case 0:
                            return qsTr("Normal Mode:");
                        case 1:
                            return qsTr("Normal Mode:");
                        case 2:
                            return qsTr("Echo Mode:");

                        default:
                            return qsTr("Normal Mode:");
                        }
                    }

                    font.pixelSize: 13
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: {
                        switch(vehicalMode){
                        case 0:
                            return "#FFFFFF";
                        case 1:
                            return "#FFFFFF";
                        case 2:
                            return "#4EB93D";

                        default:
                            return "#FFFFFF";
                        }
                    }
                }
            }

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("205 miles left")
                font.pixelSize: 17
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }

            Item {Layout.preferredHeight: 5}

            RowLayout {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                Text {
                    Layout.alignment: Qt.AlignLeft
                    text: qsTr("with")
                    font.pixelSize: 13
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: "#FFFFFF"
                }

                Text {
                    Layout.alignment: Qt.AlignLeft
                    text:{
                        switch(vehicalMode){
                        case 0:
                            return qsTr("Sport Mode:");
                        case 1:
                            return qsTr("Echo Mode:");
                        case 2:
                            return qsTr("Sport Mode:");
                        default:
                            return qsTr("Sport Mode:");
                        }
                    }

                    font.pixelSize: 13
                    font.weight: Font.Light
                    font.family: "Lato"
                    color: {
                        switch(vehicalMode){
                        case 0:
                            return "#00A3FF";
                        case 1:
                            return "#4EB93D";
                        case 2:
                            return "#00A3FF";

                        default:
                            return "#00A3FF";
                        }
                    }
                }
            }

            Text {
                Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
                text: qsTr("168 miles left")
                font.pixelSize: 17
                font.weight: Font.Bold
                font.family: "Lato"
                color: "#FFFFFF"
            }
        }
    }
}