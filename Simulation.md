# Projet ADAVIA IHM - Avancement

## Description du Projet

Le projet ADAVIA vise à développer une Interface Homme-Machine (IHM) pour la gestion d'une navette autonome. L'interface sera construite en utilisant Qt, QML et C++, avec une intégration des données des capteurs Ultrason et LIDAR, ainsi que le contrôle des accessoires de la navette.

## Avancement

### Outils de Simulation Utilisés

Pour le développement et la simulation de la navette autonome, nous utilisons ROS 2 Humble et ses outils de simulation associés, notamment :

- **Gazebo** : Outil de simulation pour tester les comportements de la navette dans des environnements virtuels réalistes.
- **RViz2** : Outil de visualisation pour observer et analyser les données des capteurs et les états du système en temps réel.
- **RQT** : Outil pour la visualisation et l'analyse des données ROS, ainsi que pour la gestion des interfaces utilisateur.

### Intégration de Simulation LiDAR

- **Simulation LiDAR 2D :** Nous avons trouvé une simulation LiDAR 2D intéressante sur GitHub, disponible à [Simple-2D-LiDAR-Odometry](https://github.com/dawan0111/Simple-2D-LiDAR-Odometry). Cette simulation est conçue pour démontrer la fonctionnalité de l'odométrie LiDAR en 2D.
  
- **Plan d'Intégration :** Nous prévoyons d'exploiter cette simulation pour développer une interface Qt/QML qui affichera les données générées par la simulation LiDAR. Cette interface permettra de visualiser en temps réel les données LiDAR, intégrées dans notre IHM pour une meilleure gestion et analyse des informations sensorielle.

### Configuration de l'Environnement

1. **Installation de ROS 2 Humble :**
   - Suivez les instructions officielles de ROS 2 pour installer la version Humble sur votre système [ici](https://docs.ros.org/en/humble/Installation.html).

2. **Configuration de Gazebo :**
   - Assurez-vous que Gazebo est correctement installé et configuré avec ROS 2. Consultez la documentation officielle de Gazebo pour l'intégration avec ROS 2 [ici](https://gazebosim.org/docs/gazebo_ros2).

3. **Configuration de RViz2 :**
   - RViz2 est inclus avec l'installation de ROS 2. Configurez les vues pour afficher les capteurs, les données de navigation et autres informations pertinentes.

4. **Utilisation de RQT :**
   - RQT peut être utilisé pour la visualisation des topics, la gestion des services, et la configuration des paramètres. Lancez RQT avec la commande `rqt` et utilisez les plugins disponibles pour surveiller l'état du système.

### Avancées Réalisées

- **Simulation dans Gazebo :** 
  - Développement de modèles de la navette et des capteurs.
  - Création de scénarios de test pour la navigation et les interactions avec les capteurs.
  
- **Visualisation avec RViz2 :**
  - Affichage des données en temps réel des capteurs Ultrason et LIDAR.
  - Configuration des vues pour surveiller les trajets et les obstacles.

- **Analyse avec RQT :**
  - Surveillance des topics ROS et gestion des paramètres de configuration.
  - Utilisation des outils de diagnostic pour identifier et résoudre les problèmes en temps réel.

- **Intégration de la Simulation LiDAR 2D :**
  - Planification du développement d'une interface Qt/QML pour afficher les données de la simulation LiDAR.
  - Préparation de l'intégration avec les données LiDAR fournies par le projet [Simple-2D-LiDAR-Odometry](https://github.com/dawan0111/Simple-2D-LiDAR-Odometry).
 
![simulation](https://github.com/user-attachments/assets/0c655591-8d9e-4c1f-a3cd-7015fc73779e)


### Prochaines Étapes

- **Affinement de la Simulation :** Améliorer les modèles et les scénarios de test pour une meilleure représentation des conditions réelles.
- **Développement de l'Interface Qt :** Créer et intégrer l'interface Qt pour afficher les données LiDAR en temps réel.
- **Intégration avec l'IHM Qt/QML :** Connecter les données simulées avec l'interface utilisateur pour des tests fonctionnels.
- **Tests et Validation :** Effectuer des tests approfondis pour valider les fonctionnalités et les performances du système dans différents scénarios.

## Ressources

- [Documentation ROS 2 Humble](https://docs.ros.org/en/humble/)
- [Gazebo avec ROS 2](https://gazebosim.org/docs/gazebo_ros2)
- [RViz2 Documentation](https://docs.ros.org/en/humble/rviz/README.html)
- [RQT Documentation](https://docs.ros.org/en/humble/rqt.html)
- [Simple-2D-LiDAR-Odometry](https://github.com/dawan0111/Simple-2D-LiDAR-Odometry)

## Contact

Pour toute question ou commentaire concernant le projet, veuillez contacter [Votre Nom] à [Votre Email].

---

*Ce fichier README.md fournit un aperçu de l'avancement du projet ADAVIA IHM avec les outils de simulation ROS 2 Humble et l'intégration de la simulation LiDAR. Pour des détails supplémentaires ou des mises à jour, veuillez consulter les sections spécifiques ou contacter l'équipe de développement.*
