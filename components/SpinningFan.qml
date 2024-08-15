import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
Item {
    id: fan
    width: bottomBar.width * 0.1
    height: bottomBar.height
    anchors.left: clima.left
    anchors.leftMargin: 200

    Image {
        id: fanimg
        anchors.fill: parent
        source: "qrc:/assets/icons/homeScreen/fan.svg"
        fillMode: Image.PreserveAspectFit

        // Animation de rotation
        RotationAnimation {
            id: rotationAnimation
            target: fanimg
            from: 0
            to: 360
            duration: rotationSpeed//2000 // Durée de la rotation en millisecondes
            loops: Animation.Infinite // Répéter indéfiniment
            easing.type: Easing.Linear // Transition linéaire
        }

        // Démarrer l'animation lorsque l'image est chargée
        Component.onCompleted: rotationAnimation.start()
        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                // Ajuster la vitesse de rotation en fonction des clics
                if (rotationSpeed > 500) {
                    rotationSpeed -= 500 // Augmenter la vitesse (réduire la durée)
                } else {
                    rotationSpeed = 2000 // Réinitialiser à la vitesse initiale si trop rapide
                }
                rotationAnimation.duration = rotationSpeed // Mettre à jour la durée de l'animation
                rotationAnimation.restart() // Redémarrer l'animation avec la nouvelle durée
            }
        }
    }
}
