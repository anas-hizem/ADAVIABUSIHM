# Projet ADAVIA IHM

## Description du Projet

Le projet ADAVIA IHM vise à concevoir une Interface Homme-Machine (IHM) complète pour la gestion efficace d'une navette autonome. Cette IHM est développée en utilisant les outils et technologies de Qt, notamment Qt Creator et QML, ainsi que les langages de programmation C++.

## Avancement du Projet

### Création de la Barre de Contrôle des Accessoires

L'objectif actuel est de créer une barre de contrôle des accessoires pour la navette, permettant de gérer l'inclinaison du siège et le contrôle du volume. La barre de contrôle est intégrée dans l'interface de la navette et se compose de deux composants principaux :

1. **Contrôle de l'Inclinaison du Siège (`SeatControl`)**
2. **Contrôle du Volume (`VolumeControl`)**

#### 1. Contrôle de l'Inclinaison du Siège (`SeatControl`)

Le composant `SeatControl` permet de régler l'inclinaison du siège de la navette. Il utilise une série d'images pour représenter les différents niveaux d'inclinaison (bas, moyen, haut). Les utilisateurs peuvent ajuster l'inclinaison en utilisant les flèches gauche et droite pour augmenter ou diminuer l'inclinaison.

- **Composant QML : `SeatControl.qml`**
- **Propriétés :**
  - `seatLevel` : Niveau actuel de l'inclinaison du siège.
  - `seatImages` : Liste des images représentant chaque niveau d'inclinaison.
- **Fonctionnalités :**
  - Flèches pour augmenter ou diminuer le niveau d'inclinaison.
  - Affichage de l'image du siège correspondant au niveau sélectionné.

#### 2. Contrôle du Volume (`VolumeControl`)

Le composant `VolumeControl` permet de régler le volume sonore de la navette. Il utilise des images pour représenter les différents niveaux de volume (muet, bas, moyen, élevé). Les utilisateurs peuvent ajuster le volume en utilisant les flèches gauche et droite pour diminuer ou augmenter le volume.

- **Composant QML : `VolumeControl.qml`**
- **Propriétés :**
  - `volumeLevel` : Niveau actuel du volume sonore.
  - `volumeImages` : Liste des images représentant chaque niveau de volume.
- **Fonctionnalités :**
  - Flèches pour diminuer ou augmenter le niveau de volume.
  - Affichage de l'image du volume correspondant au niveau sélectionné.

### Code des Composants

#### `SeatControl.qml`

```qml
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


```
#### `VolumeControl.qml`

```qml
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

```

## Prochaines Étapes
1. Finaliser l'intégration des composants dans l'interface globale de la navette.
2. Ajouter des fonctionnalités supplémentaires si nécessaire.

