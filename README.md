# Projet ADAVIA IHM - Avancement

## Description du Projet

Le projet ADAVIA vise à développer une Interface Homme-Machine (IHM) pour la gestion d'une navette autonome. L'interface sera construite en utilisant Qt, QML et C++, avec une intégration des données des capteurs Ultrason et LIDAR, ainsi que le contrôle des accessoires de la navette.

## Avancement

### Outils de Simulation Utilisés

Pour le développement et la simulation de la navette autonome, nous utilisons ROS 2 Humble et ses outils de simulation associés, notamment :

- **Gazebo** : Outil de simulation pour tester les comportements de la navette dans des environnements virtuels réalistes.
- **RViz2** : Outil de visualisation pour observer et analyser les données des capteurs et les états du système en temps réel.
- **RQT** : Outil pour la visualisation et l'analyse des données ROS, ainsi que pour la gestion des interfaces utilisateur.

### Simulation LIDAR

Nous avons trouvé une simulation de LIDAR qui sera intégrée dans notre projet. Vous pouvez consulter le dépôt GitHub [Simple-2D-LiDAR-Odometry](https://github.com/dawan0111/Simple-2D-LiDAR-Odometry) pour plus de détails sur cette simulation.

- **Lien du dépôt GitHub :** [Simple-2D-LiDAR-Odometry](https://github.com/dawan0111/Simple-2D-LiDAR-Odometry)
- **Objectif :** Utiliser cette simulation pour développer une interface Qt qui affichera les données de LIDAR en temps réel.

### Configuration de l'Environnement

1. **Installation de ROS 2 Humble :**
   - Suivez les instructions officielles de ROS 2 pour installer la version Humble sur votre système [ici](https://docs.ros.org/en/humble/Installation.html).

2. **Configuration de Gazebo :**
   - Assurez-vous que Gazebo est correctement installé et configuré pour simuler l'environnement de la navette.

3. **Intégration avec RViz2 et RQT :**
   - Configurez RViz2 pour visualiser les données des capteurs et les états de la navette.
   - Utilisez RQT pour la gestion des interfaces utilisateur et l'analyse des données.

4. **Exploitation de la Simulation LIDAR :**
   - Clonez le dépôt GitHub et intégrez la simulation LIDAR dans votre environnement de développement.
   - Développez une interface Qt pour afficher les données de la simulation LIDAR en temps réel.

### Prochaines Étapes

- Intégrer l'interface Qt avec les données de LIDAR fournies par la simulation.
- Tester et valider la fonctionnalité de l'IHM avec les données simulées.
- Poursuivre le développement des autres fonctionnalités de l'IHM, y compris les capteurs Ultrason et les accessoires de la navette.

## Conclusion

Le projet ADAVIA continue de progresser avec l'intégration des outils de simulation de ROS 2 Humble et l'exploitation de nouvelles ressources comme la simulation LIDAR. Nous sommes en bonne voie pour atteindre nos objectifs de développement pour la gestion de la navette autonome.

