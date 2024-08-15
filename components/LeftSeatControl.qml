import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    id: container

    // Property for the current seat level
    property int seatLevel: 0 // Default to 'mid' (0: low, 1: mid, 2: high)

    // List of seat images corresponding to each level
    property var seatImages: [
        "qrc:/assets/icons/homeScreen/seatPosition1.PNG",
        "qrc:/assets/icons/homeScreen/seatPosition2.PNG",
        "qrc:/assets/icons/homeScreen/seatPosition3.PNG"
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
                if (container.seatLevel > 0) {
                    container.seatLevel -= 1;
                }
            }
            cursorShape: Qt.PointingHandCursor

        }
    }

    // seat item
    Item {
        id: seat
        width: (parent.width - leftarrow.width - rightarrow.width) // Adjust width based on other items
        height: parent.height * 0.9  // Reduced size (70% of parent height)
        anchors {
            left: leftarrow.right
            top: parent.top
            bottom: parent.bottom
        }

        Image {
            id: seatimg
            anchors.centerIn: parent  // Center the image in the parent
            source: container.seatImages[container.seatLevel]
            fillMode: Image.PreserveAspectFit
            width: parent.width * 0.9  // Set image width relative to the container
            height: parent.height * 0.9 // Set image height relative to the container
        }
    }

    // Right arrow item
    Item {
        id: rightarrow
        width: height / 3  // Reduced size (was height / 2)
        height: parent.height
        anchors {
            left: seat.right
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
                if (container.seatLevel < 2) {
                    container.seatLevel += 1;
                }
            }
            cursorShape: Qt.PointingHandCursor

        }
    }
}

