import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Rectangle {
    color: "#151515"
    width: 1000
    height: 600
    radius: 15

    // Image de la navette en vue de dessus
    Image {
        id: navetteImage
        source: "qrc:/assets/ultrason/navette-top-view-.png"
        anchors.centerIn: parent
    }

    // Liste des capteurs ultrasoniques
    ListModel {
        id: sensorModel
        // Initialisation des valeurs par défaut, à mettre à jour dynamiquement
        ListElement { label: "Avant Gauche"; x: 880; y: 360; angle: 180; distance: 0 }
        ListElement { label: "Avant Droit"; x: 880; y: 190; angle: 180; distance: 0 }
        ListElement { label: "Arrière Gauche"; x: 70; y: 360; angle: 0; distance: 0 }
        ListElement { label: "Arrière Droit"; x: 70; y: 190; angle: 0; distance: 0 }
        ListElement { label: "Côté Gauche"; x: 450; y: 440; angle: 270; distance: 0 }
        ListElement { label: "Côté Droit"; x: 450; y: 110; angle: 90; distance: 0 }
    }

    // Update sensorModel with actual values
    Component.onCompleted: {
        // Assuming these properties are updated elsewhere
        sensorModel.get(0).distance = ultrasonSensor.avantDroit;
        sensorModel.get(1).distance = ultrasonSensor.avantGauche;
        sensorModel.get(2).distance = ultrasonSensor.arriereDroit;
        sensorModel.get(3).distance = ultrasonSensor.arriereGauche;
        sensorModel.get(4).distance = ultrasonSensor.coteDroit;
        sensorModel.get(5).distance = ultrasonSensor.coteGauche;
    }


    // Repeater to create items for each sensor
    Repeater {
        model: sensorModel

        Item {
            width: 50
            height: 50

            Image {
                id: waveImage
                anchors.centerIn: parent
                source: "qrc:/assets/ultrason/green-wave-01.png"
                width: 350
                height: 250
                property int frame: 0
                property var waveImages: []
                property int interval: 300

                Timer {
                    id: waveTimer
                    interval: waveImage.interval // Intervalle de temps pour changer les images
                    running: true
                    repeat: true
                    onTriggered: {
                        waveImage.frame = (waveImage.frame + 1) % waveImage.waveImages.length;
                        waveImage.source = waveImage.waveImages[waveImage.frame];
                    }
                }

                transform: Rotation {
                    id: waveRotation
                    origin.x: waveImage.width / 2
                    origin.y: waveImage.height / 2
                    angle: model.angle
                }

                // Binding pour mettre à jour les images en fonction de la distance
                Binding {
                    target: waveImage
                    property: "waveImages"
                    //value: ultrasonSensor.getWaveImagesForDistance(model.distance).waveImages
                    value: (ultrasonSensor ? ultrasonSensor.getWaveImagesForDistance(model.distance).waveImages : [])
                }

                Binding {
                    target: waveImage
                    property: "interval"
                    //value: ultrasonSensor.getWaveImagesForDistance(model.distance).interval
                    value: (ultrasonSensor ? ultrasonSensor.getWaveImagesForDistance(model.distance).interval : 300)
                }

                // Réinitialiser le frame lorsque les images ou l'intervalle changent
                onWaveImagesChanged: {
                    waveImage.frame = 0;
                }
                onIntervalChanged: {
                    waveTimer.interval = waveImage.interval;
                }
            }

            // Position des capteurs
            x: model.x
            y: model.y
        }
    }
}
