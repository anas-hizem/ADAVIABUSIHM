# ADAVIA IHM - Intégration d'un Modèle 3D dans l'Interface d'Accueil

## Introduction

Ce guide explique comment intégrer un modèle 3D dans l'interface d'accueil de l'application ADAVIA IHM en utilisant Qt Quick 3D. Nous utiliserons le Balsam Asset Import Tool pour convertir le modèle 3D dans un format compatible avec Qt Quick 3D et l'intégrer dans l'interface en utilisant QML.

## Prérequis

- **Qt Creator** : IDE pour développer avec Qt.
- **Qt Quick 3D** : Module Qt pour la gestion des scènes 3D.
- **Balsam Asset Import Tool** : Outil de conversion des assets 3D.
- **Modèle 3D** : Fichier source du modèle 3D (ex. : .fbx, .obj).

## Étapes

### 1. Préparation du Modèle 3D

1. **Créez ou obtenez un modèle 3D** :
   - Formats supportés : Wavefront (.obj), COLLADA (.dae), FBX (.fbx), Blender (.blend), GLTF2 (.gltf, .glb).

2. **Vérifiez le modèle** pour s'assurer qu'il est complet et prêt à être utilisé (textures, matériaux, etc.).

### 2. Conversion du Modèle 3D avec Balsam

1. **Installez Balsam** :
   Suivez les instructions d'installation de Balsam depuis la documentation officielle de Qt.

2. **Convertissez le modèle** en utilisant Balsam :
   - Ouvrez une fenêtre de terminal.
   - Utilisez la commande suivante pour convertir le fichier `testModel.fbx` :
     ```bash
     balsam testModel.fbx
     ```
   - Cette commande génère des fichiers comme `meshes/testModel.mesh` et `TestModel.qml`.

### 3. Intégration dans l'Interface QML

1. **Créez ou ouvrez votre fichier QML pour l'interface d'accueil** :
   - Par exemple, `HomePage.qml`.

2. **Importez Qt Quick 3D** dans votre fichier QML :
3. 
   ```qml
     import QtQuick 2.15
     import QtQuick3D 1.15
   ```
3. **Ajoutez le composant 3D** dans votre interface:
Utilisez le fichier TestModel.qml généré pour intégrer le modèle 3D.

```qml

    Rectangle {
      width: 800
      height: 600
    
      // Vue 3D
      View3D {
          anchors.fill: parent
    
          // Modèle 3D
          TestModel {
              id: modelInstance
              // Configurez les propriétés du modèle ici
          }
    
          // Ajoutez une caméra pour visualiser le modèle
          PerspectiveCamera {
              id: camera
              position: Qt.vector3d(0, 0, 10)
              lookAt: Qt.vector3d(0, 0, 0)
          }
    
          // Ajoutez une lumière
          PointLight {
              id: light
              color: "white"
              intensity: 1
              position: Qt.vector3d(5, 5, 10)
          }
      }
   }

   
```

### 4. Test et Débogage :

1. Exécutez votre application dans Qt Creator pour vérifier l'intégration du modèle 3D.
2. Ajustez les propriétés du modèle et de la caméra selon vos besoins pour obtenir la meilleure vue possible.


### 5. Documentation et Aide
1. Documentation de Qt Quick 3D : Qt Quick 3D Documentation
2. Balsam Asset Import Tool : Documentation Balsam
