# Création d'une Interface Utilisateur pour les Résultats du Modèle YOLO

## Description

Ce projet vise à développer une interface utilisateur en QML qui affiche les résultats du modèle YOLO pour la détection de personnes. L'interface présente des informations telles que le nombre de personnes entrantes, sortantes et actuellement présentes, en utilisant des boutons et des images pour une présentation claire et intuitive.

## Prérequis

Avant de commencer, assurez-vous d'avoir les éléments suivants :

- **Qt** : Version 5.15 ou ultérieure, incluant les modules QtQuick et QtQuick.Controls.
- **Python** : Pour la gestion des données et le lancement de l'application.
- **PyQt** : Pour intégrer le lancement de l'application Python à l'interface Qt.
- **Modèle YOLO** : Pré-entraîné pour la détection de personnes.
- **Socket TCP** : Configuration pour la communication entre le client (Python) et le serveur (Qt).

## Objectif

Le but de cette interface est de fournir une vue en temps réel des résultats du modèle YOLO pour compter les personnes à partir d'une caméra. L'interface permet :

- De lancer le comptage des personnes via un bouton.
- D'afficher les résultats de comptage pour les personnes entrant et sortant.
- D'afficher des informations sur le nombre actuel de personnes présentes.

## Composants Clés

- **Interface QML** : Fichier principal de l'interface utilisateur définie en QML.
  - **`GridLayout`** : Agencement principal des éléments de l'interface.
  - **`ColumnLayout`** : Agencement vertical des éléments avec des marges et des espacements appropriés.
  - **`Rectangle`** : Utilisé pour les conteneurs de données, avec des couleurs et des images pour une meilleure visualisation.
  - **`Text`** : Affiche les nombres actuels pour les personnes entrantes, sortantes, et présentes.
  - **`Button`** : Lance le comptage des personnes lorsqu'il est cliqué.

- **Connections QML** : Utilisé pour recevoir les données de comptage via des signaux et mettre à jour l'interface en conséquence.

## Réalisation

1. **Définition de l'Interface** :
   - L'interface utilise `GridLayout` et `ColumnLayout` pour organiser les éléments de manière structurée.
   - Les rectangles avec des images et des textes sont utilisés pour afficher les informations de comptage.

2. **Lancement de l'Application** :
   - Le bouton "Start people counting" lance l'application Python qui gère le comptage des personnes.
   - Le comptage des personnes est effectué par le modèle YOLO et envoyé au serveur via des sockets TCP.

3. **Affichage des Résultats** :
   - Les résultats sont reçus par le client QML et affichés en temps réel.
   - Les informations de comptage (entrant, sortant, actuel) sont mises à jour dynamiquement.



![PersonDetection](https://github.com/user-attachments/assets/de3715f9-a7ae-4fb1-8f39-f1f998732352)


## Perspectives

- **Améliorations Potentielles** :
  - Intégration d'analyses avancées et de rapports basés sur les données de comptage.
  - Ajout de fonctionnalités pour ajuster dynamiquement les paramètres du modèle YOLO.
  - Optimisation de la performance pour des détections en temps réel sur des plateformes plus petites, telles que les cartes Raspberry Pi.

- **Déploiement** :
  - La possibilité de déployer l'application sur des dispositifs embarqués pour des détections en temps réel et une gestion centralisée des données.
  - Intégration avec d'autres systèmes de gestion pour une analyse et un reporting détaillés.

---

Ce README.md fournit un aperçu de l'interface utilisateur pour les résultats du modèle YOLO, ainsi que des informations sur sa réalisation et ses perspectives d'évolution. Pour toute question ou problème, n'hésitez pas à consulter la documentation Qt ou les forums de support.
