# Amélioration du Projet de Détection d'Objets et Transmission TCP

## Objectif

L'objectif principal de cette amélioration est d'intégrer une fonctionnalité de détection d'objets en temps réel avec une communication réseau via TCP. Ce projet combine un traitement d'images basé sur une détection d'objets et une communication client-serveur pour transmettre les résultats détectés à un serveur local.

## Fonctionnement

### 1. Détection d'Objets

- **Fonction `process_and_display_results`**:
  - **Entrée** : Un cadre d'image (`frame`), des résultats de détection (`results`), un modèle (`model`), et un seuil de confiance (`confidence_threshold`).
  - **Traitement** :
    - Parcourt les résultats de détection, filtre les objets détectés selon le seuil de confiance.
    - Dessine des rectangles et des étiquettes autour des objets détectés sur l'image.
    - Prépare un objet JSON contenant le nom de la classe et le score de confiance, puis envoie ces informations à travers le réseau.
  - **Sortie** : Liste des objets détectés avec leurs classes et scores.

### 2. Transmission des Données

- **Fonction `send_data_objet`**:
  - **Entrée** : Un objet détecté.
  - **Traitement** :
    - Configure un socket TCP pour se connecter à un serveur local.
    - Envoie l'objet détecté sous forme de message JSON au serveur.
  - **Sortie** : Aucune, mais les données sont transmises au serveur.

### 3. Serveur TCP

- **Classe `MyTcpSocket`** :
  - **Fonction `startServer`** :
    - Démarre le serveur TCP sur le port `65432`.
  - **Fonction `newConnection`** :
    - Gère les nouvelles connexions entrantes et les configure pour lire les données.
  - **Fonction `readData`** :
    - Lit les données reçues, les convertit de JSON en objets C++, et émet un signal avec les informations de l'objet détecté.

### 4. Fichiers Sources

- **Python** :
  - `send_data_objet`: Envoie les données de détection d'objet via TCP.
  - `process_and_display_results`: Traite les résultats de détection et appelle `send_data_objet`.

- **C++** :
  - `mytcpsocket.h` : Déclaration de la classe `MyTcpSocket` pour la gestion du serveur TCP.
  - `mytcpsocket.cpp` : Implémentation des méthodes pour démarrer le serveur, gérer les connexions et lire les données.

## Avantages

- **Temps Réel** : Permet la détection d'objets en temps réel et la transmission immédiate des résultats à un serveur.
- **Flexibilité** : La communication TCP permet d'intégrer facilement des clients ou des systèmes tiers pour utiliser les données de détection.
- **Modularité** : Séparation claire des responsabilités entre le traitement des images, la communication réseau, et le serveur de réception.

## Réalisation

![stop_panel detected](https://github.com/user-attachments/assets/7826368f-2197-4208-acb6-433135b054f5)

![green_sign detected](https://github.com/user-attachments/assets/7329f92d-0215-4eb7-97a7-01f24f772a6a)

## Perspectives

- **Amélioration de la Fiabilité** : Ajouter des mécanismes de reconnexion et de gestion des erreurs pour rendre la communication plus robuste.
- **Interface Utilisateur** : Développer une interface utilisateur pour visualiser les résultats de la détection d'objets reçus par le serveur.
- **Scalabilité** : Étendre le système pour gérer plusieurs clients simultanément ou intégrer des fonctionnalités supplémentaires comme le stockage des données.
