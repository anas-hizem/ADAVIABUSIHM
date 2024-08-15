import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Item {

    Image {
        id: battery
        anchors.left: parent.left
        source: "qrc:/assets/image/battery.svg"
        fillMode: Image.PreserveAspectFit
        width: parent.width * 0.5  // Ajuster la largeur de l'image
        height: parent.height
        anchors.leftMargin: 20
    }

    Text {
        id: batteryText
        text: "80%"  // Remplacer par la valeur de batterie réelle si disponible
        anchors.left: battery.right
        anchors.verticalCenter: battery.verticalCenter
        font.pixelSize: 30
        color: "white"
        anchors.leftMargin: 5
    }
}
