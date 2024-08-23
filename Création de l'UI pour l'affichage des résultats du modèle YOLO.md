# Création de l'UI pour l'affichage des résultats du modèle YOLO “Système de Détection des objects”

## Description

Ce projet vise à développer une interface utilisateur (UI) en utilisant Qt Quick pour afficher les résultats de détection d'objets fournis par un modèle YOLO. L'interface permet de visualiser les objets détectés en temps réel à partir d'une caméra et d'afficher des images correspondantes en fonction des objets détectés.

## Prérequis

- **Qt 5.15 ou supérieur** : Framework pour le développement d'interfaces utilisateur avec QML et C++.
- **Qt Creator** : IDE pour développer avec Qt.
- **Python** : Pour lancer l'application de détection via PyQt5.
- **Modèle YOLO** : Un modèle pré-entraîné pour la détection d'objets.
- **Bibliothèques nécessaires** : QtQuick, QtQuick.Controls, QtQuick.Shapes, QtQuick.Layouts.

## Objectif

- **Développer une UI interactive** qui affiche les résultats de détection d'objets en temps réel.
- **Permettre l'interaction** avec le modèle YOLO pour lancer la détection et mettre à jour l'interface avec les objets détectés.
- **Affichage dynamique** des images correspondant aux objets détectés en fonction des résultats fournis par le modèle YOLO.

## Composants Clés

1. **Texte d'Introduction** :
   - Affiche un message d'introduction concernant la caméra de détection d'objets.

2. **Rectangle Principal** :
   - Contient un bouton pour lancer la détection d'objets. Lorsqu'il est cliqué, il appelle une méthode en C++ pour lancer l'application de détection.

3. **Rectangles d'Affichage des Objets** :
   - Trois rectangles affichant des images correspondant à différents types d'objets détectés (personnes, panneaux de stop, signaux lumineux).
   - **Images** :
     - `personWalk.png`
     - `stop_panel.png`
     - `Light.png`
   - **Images mises à jour dynamiquement** en fonction des résultats reçus via TCP.

4. **Connections** :
   - Connexions au signal `objectReceived` pour mettre à jour les images et l'opacité en fonction des objets détectés et de leurs scores.

## Réalisation

- **Développement de l'UI en QML** :
  - Utilisation de `GridLayout` pour organiser les éléments de l'interface.
  - Utilisation de `ColumnLayout` et `RowLayout` pour disposer les éléments de manière élégante et réactive.
  - Création de boutons et rectangles avec des images pré-définies pour afficher les résultats de la détection.

- **Communication avec C++** :
  - Le bouton "Start object detection" appelle une méthode en C++ pour lancer le processus de détection d'objets.
  - Les résultats de détection sont reçus via un signal TCP et sont utilisés pour mettre à jour les images affichées dans l'UI.

## Prototype

![PanelDetection](https://github.com/user-attachments/assets/81fea101-27ac-4889-b439-ced3c06066d9)



## Perspectives

- **Amélioration de l'UI** :
  - Ajouter des fonctionnalités supplémentaires telles que des graphiques de score de confiance ou des alertes visuelles pour les objets détectés.
  - Intégrer des animations ou des transitions pour une meilleure expérience utilisateur.

- **Scalabilité** :
  - Étendre l'UI pour supporter plusieurs types d'objets et sources de détection.
  - Ajouter des options de configuration pour personnaliser les seuils de détection et les types d'objets à afficher.

- **Intégration avec d'autres systèmes** :
  - Connecter l'interface à des systèmes de gestion de données ou d'alerte pour une utilisation en environnement réel.

## Conclusion

Ce projet démontre la capacité à créer une interface utilisateur réactive et interactive pour afficher les résultats de détection d'objets en utilisant Qt Quick. L'intégration avec des modèles de détection et des mécanismes de communication TCP permet une solution robuste pour les applications de surveillance et d'analyse en temps réel.

