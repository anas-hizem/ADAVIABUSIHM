# Projet ADAVIA IHM

## Création de la Barre de Contrôle des Accessoires : Système de Climatisation

### Description du Projet

Le projet ADAVIA IHM vise à développer une Interface Homme-Machine (IHM) pour la gestion efficace d'une navette autonome. Cette IHM est réalisée en utilisant Qt Creator et QML, en combinaison avec le langage de programmation C++. Le système de climatisation fait partie des accessoires contrôlés par l'interface.

### Objectif

L'objectif de cette fonctionnalité est de créer une barre de contrôle dans l'interface utilisateur qui permet de gérer le système de climatisation de la navette. Cette barre inclut les éléments suivants :

- **Icône de Climatisation** : Un bouton qui change d'état pour représenter les modes de climatisation disponibles (climatisation, dégivrage, chauffage).
- **Ventilateur Rotatif** : Un ventilateur animé qui s'active en fonction du mode de climatisation sélectionné.

### Fonctionnalités

1. **Icône de Climatisation**
   - **État Initial** : Affiche l'icône de climatisation.
   - **État 1** : Changement d'icône pour le mode dégivrage avec une couleur d'indicateur bleue.
   - **État 2** : Changement d'icône pour le mode chauffage avec une couleur d'indicateur rouge.
   - **Retour à l'État Initial** : Retour à l'icône de climatisation et à la couleur d'indicateur blanche.

2. **Ventilateur Rotatif**
   - **Activation** : Le ventilateur s'active lors du passage en mode dégivrage ou chauffage.
   - **Vitesse de Rotation** : La vitesse de rotation du ventilateur peut être ajustée en fonction des clics de l'utilisateur.

### Composants

- **`bottomBar`** : Élément contenant les contrôles pour le système de climatisation, situé en bas de l'interface.
- **`clima`** : Composant pour l'icône de climatisation avec une zone cliquable permettant de changer d'état.
- **`fan`** : Composant pour le ventilateur avec une animation de rotation contrôlée par l'état de l'icône de climatisation.

## Conclusion

La barre de contrôle des accessoires de la navette, incluant le système de climatisation, est une étape clé dans le développement de l'interface utilisateur pour la navette autonome ADAVIA. Les fonctionnalités implémentées permettent un contrôle interactif et visuel, avec des possibilités d'améliorations futures pour enrichir l'expérience utilisateur.

