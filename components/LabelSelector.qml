import QtQuick 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Pane {
    id: control
    padding: 0
    leftInset: 0
    rightInset: 0
    property string setColors: "#FFFFFF"
    property real radius: implicitHeight / 2
    property int allowMaxTags: 5
    property var lableList: ["Label", "Label", "Label"]
    signal signalModeChanged(int index)
    implicitWidth: layout.implicitWidth
    implicitHeight: 60

    background: Rectangle {
        implicitHeight: control.implicitHeight
        implicitWidth: control.implicitWidth
        color: "#BDD248"
        radius: control.radius
    }

    RowLayout {
        id: layout
        spacing: 0
        anchors.verticalCenter: parent.verticalCenter

        Repeater {
            id: rep
            Layout.alignment: Qt.AlignHCenter
            width: parent.width
            model: lableList

            delegate: RadioButton {
                id: labelIndicator
                padding: 0
                checked: index === 0
                indicator: Item {}

                contentItem: Rectangle {
                    implicitHeight: control.implicitHeight - 1
                    implicitWidth: tags.implicitWidth + 106
                    radius: control.radius
                    color: labelIndicator.checked ? "white" : "transparent"

                    HoverHandler {
                        id: tagHovered
                    }

                    Label {
                        id: tags
                        text: modelData
                        font.pixelSize: 25
                        font.bold: true
                        font.family: "Montserrat"
                        anchors.centerIn: parent
                    }
                }

                onClicked: {
                    // Emit the signal with the index of the selected item
                    signalModeChanged(index);
                }
            }
        }
    }
}
