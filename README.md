# Reformulation et Nettoyage du Projet "Système de Détection et de Suivi de Personnes"


## Objectif

Le but du projet est de détecter les personnes dans une vidéo, de suivre leurs mouvements, et de compter combien de personnes entrent et sortent d'une zone délimitée par des lignes d'entrée et de sortie. Les données de détection sont également envoyées à un serveur via des sockets.

## Composants Principaux

- **PersonDetection.py** : Script principal pour la détection de personnes dans une vidéo. Il utilise un modèle YOLO pour la détection, et SORT pour le suivi des objets.
- **utils_prin.py** : Contient des fonctions utilitaires pour l'initialisation du modèle et du tracker, la gestion des détections, l'envoi des données au serveur, et le dessin des lignes de référence sur l'image.
- **sort.py** : Contient l'implémentation de l'algorithme SORT (Simple Online and Realtime Tracking) pour le suivi des objets détectés.

## Fonctionnement

1. **Initialisation**:
   - Le script `PersonDetection.py` ouvre une vidéo (`test4.mp4`) et redimensionne les images à une taille souhaitée.
   - Il initialise le modèle YOLO pour la détection et le tracker SORT pour le suivi.

2. **Détection**:
   - Pour chaque image de la vidéo, les personnes sont détectées par le modèle YOLO.
   - Les résultats de la détection sont utilisés pour mettre à jour le tracker SORT.

3. **Suivi**:
   - Le tracker SORT suit les personnes détectées d'une image à l'autre en utilisant les coordonnées des bounding boxes.

4. **Analyse des Trajectoires**:
   - Deux lignes de référence (entrée et sortie) sont définies sur l'image.
   - Lorsqu'une personne traverse ces lignes, les compteurs d'entrée et de sortie sont mis à jour.
   - Les résultats sont envoyés à un serveur via un socket, comprenant le nombre de personnes entrées et sorties ainsi que le nombre total de personnes actuellement dans la zone.

5. **Affichage**:
   - Les résultats sont affichés en temps réel sur la fenêtre d'affichage avec les lignes de référence et les compteurs.

## Détails Techniques

- **Modèle YOLO**:
  - Utilisé pour détecter les personnes et d'autres objets (comme des panneaux).
  - Les classes détectées incluent des panneaux et des personnes.

- **Tracker SORT**:
  - Un algorithme de suivi simple et en temps réel qui associe les détections à des objets suivis en utilisant la matrice d'IoU (Intersection over Union).

- **Sockets**:
  - Les données de détection sont envoyées à un serveur local via des sockets en utilisant le protocole TCP.

- **Fonctions Utilitaires**:
  - `initialize_model_and_tracker()`: Initialise le modèle YOLO et le tracker SORT.
  - `get_detections()`: Obtient les détections du modèle.
  - `update_tracker()`: Met à jour le tracker avec les nouvelles détections.
  - `draw_lines()`: Dessine les lignes de référence sur l'image.
  - `process_tracker_results()`: Traite les résultats du tracker, compte les entrées et les sorties, et envoie les données au serveur.

## Code Expliqué

- **main()**: Le point d'entrée du script. Il lit les images, effectue la détection et le suivi, met à jour les compteurs, et affiche les résultats.
  
- **utils_prin.py**:
  - Contient des fonctions pour gérer la détection, le suivi, et l'envoi des données.
  - Les données envoyées comprennent des informations sur les personnes détectées et leur statut (entrée/sortie).

- **sort.py**:
  - Implémente l'algorithme de suivi SORT, qui utilise un filtre de Kalman pour prédire et corriger les positions des objets suivis.

Ce projet est typiquement utilisé dans des systèmes de comptage de personnes, des applications de surveillance et des systèmes de gestion de flux de personnes dans des environnements comme les magasins, les événements publics, et les bâtiments commerciaux.

