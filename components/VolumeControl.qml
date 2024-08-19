import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: container

    // Property for the current volume level
    property int volumeLevel: 2 // Default to 'mid' (0: mute, 1: low, 2: mid, 3: high)

    // List of volume images corresponding to each level
    property var volumeImages: [
        "qrc:/assets/icons/homeScreen/volume-xmark-solid.svg",
        "qrc:/assets/icons/homeScreen/volume-low-solid.svg",
        "qrc:/assets/icons/homeScreen/volume-mid-solid.png",
        "qrc:/assets/icons/homeScreen/volume-high-solid.svg"
    ]

    // Left arrow item
    Item {
        id: leftarrow
        width: height / 3  // Reduced size (was height / 2)
        height: parent.height
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }

        Image {
            source: "qrc:/assets/icons/homeScreen/arrow.svg"
            rotation: 180
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (container.volumeLevel > 0) {
                    container.volumeLevel -= 1;
                }
            }
            cursorShape: Qt.PointingHandCursor

        }
    }

    // Volume item
    Item {
        id: volume
        width: (parent.width - leftarrow.width - rightarrow.width) // Adjust width based on other items
        height: parent.height * 0.8  // Reduced size (70% of parent height)
        anchors {
            left: leftarrow.right
            top: parent.top
            bottom: parent.bottom
        }

        Image {
            id: volumeimg
            anchors.centerIn: parent  // Center the image in the parent
            source: container.volumeImages[container.volumeLevel]
            fillMode: Image.PreserveAspectFit
            width: parent.width * 0.7  // Set image width relative to the container
            height: parent.height * 0.7 // Set image height relative to the container
        }
    }

    // Right arrow item
    Item {
        id: rightarrow
        width: height / 3  // Reduced size (was height / 2)
        height: parent.height
        anchors {
            left: volume.right
            top: parent.top
            bottom: parent.bottom
        }

        Image {
            source: "qrc:/assets/icons/homeScreen/arrow.svg"
            rotation: 0
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (container.volumeLevel < 3) {
                    container.volumeLevel += 1;
                }
            }
            cursorShape: Qt.PointingHandCursor

        }
    }
}
