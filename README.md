# Création de l'Interface Utilisateur pour Afficher les Résultats du Modèle YOLO

## Description

Ce projet vise à développer une interface utilisateur (UI) en utilisant Qt Quick pour afficher les résultats de détection d'objets fournis par un modèle de détection d'objets YOLO (You Only Look Once). L'interface permet de visualiser en temps réel les objets détectés à partir des images capturées par une caméra. L'UI utilise des éléments graphiques pour représenter les objets détectés, avec la possibilité de lancer la détection via un bouton.

## Prérequis

- **Qt 5.15 ou supérieur** : Pour développer et exécuter l'interface utilisateur.
- **QtQuick** : Modules `QtQuick`, `QtQuick.Controls`, `QtQuick.Shapes`, `QtQuick.Layouts` pour la création de l'interface.
- **Qt Creator** : Pour éditer et tester le code QML.
- **Modèle YOLO** : Modèle de détection d'objets pré-entraîné pour détecter des objets spécifiques.

## Objectif

L'objectif principal est de créer une interface utilisateur qui :
- Affiche des images représentant différents objets détectés par le modèle YOLO.
- Met à jour dynamiquement les images affichées en fonction des résultats reçus du modèle.
- Permet de lancer la détection d'objets via une interface graphique.

## Composants Clés

1. **GridLayout** :
   - Contient les éléments de l'interface, organisés en grille.

2. **ColumnLayout** :
   - Contient un titre et un bouton pour démarrer la détection d'objets.
   - Le bouton appelle une méthode C++ pour lancer l'application PyQt5 pour la détection.

3. **Rectangles** :
   - Chaque rectangle représente un conteneur pour afficher une image d'objet détecté.
   - Les rectangles sont stylisés avec une couleur de fond et des bords arrondis.

4. **Images** :
   - Affichent des images correspondant aux objets détectés (ex : personne, panneau de stop, lumière).
   - La source et l'opacité des images sont mises à jour en fonction des objets reçus.

5. **Connections** :
   - Établit des connexions avec le signal `objectReceived` pour mettre à jour les images affichées.

## Réalisation

L'interface est réalisée en QML et utilise les modules QtQuick pour la mise en page et la gestion des éléments visuels :

- **Titre** : "Bus front camera for object detection", affiché au-dessus des éléments de détection.
- **Bouton "Start object detection"** : Lance la détection d'objets lorsqu'il est cliqué, via une méthode Python (PyQt5).
- **Images de Détection** : Trois rectangles affichent des images correspondant aux objets détectés, avec des mises à jour en fonction des données reçues du modèle YOLO.

Le code QML permet de gérer l'affichage dynamique des résultats et la mise à jour des images en fonction des objets détectés.

## Perspectives

- **Amélioration de l'Interface** : Ajouter des fonctionnalités telles que des filtres pour sélectionner les types d'objets à afficher.
- **Visualisation Avancée** : Intégrer des informations supplémentaires comme les coordonnées des objets détectés ou des légendes.
- **Optimisation de Performance** : Améliorer la gestion des ressources et la réactivité de l'interface pour une utilisation en temps réel.
- **Support Multilingue** : Ajouter la prise en charge de plusieurs langues pour rendre l'interface accessible à un public plus large.

---

Pour toute question ou contribution, veuillez contacter l'équipe de développement.
