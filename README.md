# Projet de Visualisation des Données LIDAR avec Qt et ROS2

## 1. Introduction

Ce projet vise à développer une interface graphique en utilisant Qt pour afficher les données LIDAR provenant d'une simulation ROS2. L'objectif est de recevoir des données LIDAR, les traiter, et les visualiser en temps réel. Le projet exploite les outils ROS2 Humble (Gazebo, RViz2, rqt) pour la simulation et l'analyse des données, ainsi qu'une simulation trouvée sur GitHub pour une odométrie 2D LIDAR simple.

## 2. Arborescence du Projet

L'arborescence du projet est la suivante :

```bash
  ros2_ws/src/my_lidar_package/
  ├── build
  ├── CMakeLists.txt 
  ├── package.xml 
  ├── src
  │ ├── main.cpp 
```


### Fichiers Importants :
- **CMakeLists.txt** : Contient les instructions de construction pour le package ROS2 et Qt.
- **package.xml** : Déclare les dépendances du package et les informations de package.
- **main.cpp** : Implémente l'interface Qt pour la visualisation des données LIDAR et de la carte.

## 3. Dépendances

Les dépendances requises pour ce projet sont :
- **ROS2 Humble** (rclcpp, sensor_msgs, nav_msgs)
- **Qt5** (Qt5Widgets, Qt5Core, Qt5Gui)

Ces dépendances sont spécifiées dans `CMakeLists.txt` et `package.xml`.

## 4. Fonctionnalités Développées

### 4.1. Interface Qt

L'interface Qt développée comprend :
- **Visualisation LIDAR** : Une vue graphique (QGraphicsView) qui affiche les points LIDAR en temps réel.
- **Visualisation de la Carte** : Une vue de la carte affichant une grille basée sur les données d'OccupancyGrid reçues.
- **Grille** : Une grille est dessinée sur les deux vues pour une meilleure compréhension des données.

### 4.2. Abonnements ROS2

Deux abonnements ROS2 sont utilisés :
- **LaserScan** (`/scan`) : Reçoit les données LIDAR sous forme de `sensor_msgs::msg::LaserScan`.
- **OccupancyGrid** (`/map`) : Reçoit les données de la carte sous forme de `nav_msgs::msg::OccupancyGrid`.

Les données reçues sont traitées et affichées en temps réel.

## 5. Simulation Utilisée

J'ai trouvé une simulation existante sur GitHub pour une **Odométrie 2D LIDAR simple** : [Simple-2D-LiDAR-Odometry](https://github.com/dawan0111/Simple-2D-LiDAR-Odometry). Je vais exploiter cette simulation pour intégrer l'affichage des données LIDAR dans l'interface Qt. Cette simulation sera utilisée pour valider le bon fonctionnement de l'interface.

## 6. État Actuel

Le projet a bien progressé :
- **Interface Qt** : L'interface de base est fonctionnelle avec la visualisation des données LIDAR et de la carte.
- **Intégration ROS2** : Les abonnements ROS2 sont en place et les données sont affichées en temps réel.
- **Simulation** : La simulation trouvée sur GitHub sera exploitée dans les prochaines étapes pour tester et affiner l'interface.

## 7. Prochaines Étapes

- **Intégration de la simulation LIDAR** : Tester la simulation LIDAR avec l'interface Qt et ajuster l'affichage.
- **Amélioration de l'interface** : Ajouter des fonctionnalités supplémentaires pour l'affichage, comme le contrôle de la simulation et l'affichage des informations de débogage.
- **Tests et validation** : Valider l'intégration complète de l'interface Qt avec ROS2 et la simulation.

## 8. Conclusion

Ce projet démont
