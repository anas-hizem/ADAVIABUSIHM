# Intégration d’un Modèle 3D dans l’Interface d’Accueil

## Introduction

Le projet ADAVIA IHM vise à créer une Interface Homme-Machine (IHM) complète pour une navette autonome en utilisant Qt et QML. L'une des fonctionnalités clés de cette interface est l'intégration d'un modèle 3D pour visualiser la navette dans l'interface d'accueil. Ce modèle 3D permet une interaction visuelle dynamique, offrant des fonctionnalités telles que la rotation et le zoom, ainsi que l'ajustement de l'éclairage pour une meilleure visualisation.

## Contexte

L'intégration du modèle 3D dans l'interface d'accueil est conçue pour fournir une représentation réaliste de la navette autonome. Le modèle est importé à partir de fichiers au format COLLADA (.dae) et converti en un format optimisé pour Qt Quick 3D à l'aide de l'outil Balsam. Cette approche permet d'assurer une performance élevée lors du rendu en temps réel dans l'application.

## Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants installés :

- **Qt 5.15.1** ou version ultérieure
- **Qt Creator** pour le développement
- **Balsam Asset Import Tool** pour la conversion des fichiers 3D
- **Outils de création de contenu 3D** (comme Maya, Blender, ou 3ds Max) pour l'édition de modèles 3D

## Installation

1. **Installation des outils nécessaires** :
   - Téléchargez et installez Qt 5.15.1 depuis le site officiel de Qt.
   - Assurez-vous que Balsam Asset Import Tool est installé. Vous pouvez obtenir Balsam via le dépôt de Qt ou en tant que partie de l'installation de Qt Creator.

2. **Conversion du modèle 3D** :
   - Placez votre fichier 3D (.dae) dans un répertoire accessible.
   - Utilisez Balsam pour convertir le fichier en format compatible avec Qt Quick 3D :

     ```bash
     balsam ecoline.dae
     ```

   - Cette commande générera les fichiers nécessaires, notamment `Ecoline.qml`, qui est le composant QML pour le modèle 3D.

3. **Configuration du projet Qt** :
   - Intégrez les fichiers générés dans votre projet Qt. Assurez-vous que le fichier `Ecoline.qml` est placé dans le répertoire approprié.

## Utilisation

Pour utiliser le modèle 3D dans votre interface d'accueil, suivez ces étapes :

1. **Importation des modules nécessaires** :
   - Assurez-vous que votre fichier QML inclut les modules nécessaires pour Qt Quick 3D :

  ```qml
     import QtQuick 2.15
     import QtQuick.Controls 2.15
     import QtQuick3D 1.15
  ```

2. **Définition du modèle 3D** :
   - Utilisez le code QML fourni pour ajouter le modèle 3D à votre interface. Le fichier QML contient les paramètres pour la rotation, l'échelle, et les lumières.

```qml
     Ecoline {
         id: bus
         scale: Qt.vector3d(scaleFactor, scaleFactor, scaleFactor)
         eulerRotation: Qt.vector3d(rotationX, rotationY, 0)
         position: Qt.vector3d(0, -500, 0) // Ajustez la position selon les besoins
     }
```
## Fonctionnalités

Le modèle 3D intégré dans l'interface d'accueil offre plusieurs fonctionnalités interactives :

### Rotation et Zoom :
1. Le modèle peut être tourné en utilisant la souris (clic et glisser) pour changer l'orientation.
`2. La molette de la souris permet de zoomer et dézoomer le modèle en ajustant le facteur d'échelle (scaleFactor).


```qml
        MouseArea {
            anchors.fill: parent
            drag.target: parent

            onWheel: {
                scaleFactor += wheel.angleDelta.y / 120 // Adjust the scale factor change rate
                if (scaleFactor < 0.1) scaleFactor = 0.1 // Prevent scale factor from being too small
            }

            onPressed: {
                lastX = mouse.x
                lastY = mouse.y
            }

            onPositionChanged: {
                if (drag.active) {
                    var deltaX = mouse.x - lastX
                    var deltaY = mouse.y - lastY
                    rotationX += deltaY / 5
                    rotationY += deltaX / 5
                    lastX = mouse.x
                    lastY = mouse.y

                    // Update light rotation based on the model's rotation
                    lightRotationX = -rotationX
                    lightRotationY = rotationY
                }
            }
        }
```


### Éclairage :

1. **DirectionalLight** : Trois lumières directionnelles sont configurées pour éclairer le modèle sous différents angles. L'une d'entre elles utilise des ombres pour un rendu plus réaliste.
2. **PointLight** et **SpotLight** : Ces lumières ajoutent des effets de lumière supplémentaires pour améliorer la visualisation du modèle.



```qml

        DirectionalLight {
            color: "white"
            eulerRotation.x: lightRotationX
            eulerRotation.y: lightRotationY
            castsShadow: true
            shadowBias: 0.01 // Ajuste la douceur des ombres
        }

        PointLight {
            position: Qt.vector3d(1000, 1000, 1000)
            color: "white"
            constantFade: 0.5
            linearFade: 0.1
            quadraticFade: 0.9
        }
        SpotLight {
            position: Qt.vector3d(500, 500, 1000)
            color: "blue"
            coneAngle: 45
            innerConeAngle: 30
            constantFade: 0.5
            linearFade: 0.1
            quadraticFade: 0.9
        }

```


### Propriétés et Transformations :

1. **rotationX** et **rotationY** : Permettent de faire pivoter le modèle autour des axes X et Y.

2. **scaleFactor** : Définit l'échelle du modèle, permettant de l'ajuster pour une meilleure visualisation.

3. **lightRotationX** et **lightRotationY** : Contrôlent la direction de la lumière pour simuler différentes conditions d'éclairage.


## Réalisation

![3D model](https://github.com/user-attachments/assets/54477309-977c-4263-971a-db8ec4a4cd1a)










