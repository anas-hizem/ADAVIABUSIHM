# ADAVIA IHM - Interface des Paramètres de la Navette

## Description

Le projet **ADAVIA IHM** vise à développer une interface complète pour la configuration des paramètres de la navette autonome. Cette documentation couvre les dernières avancées du projet ainsi que les prochaines étapes pour améliorer l'interface utilisateur des paramètres.

## Contenu Actuel

### Composants de l'Interface des Paramètres

1. **display.qml**
    - **Description** : Gère les paramètres liés à l'affichage, y compris le mode d'affichage, la luminosité de l'écran, et les unités de mesure.
    - **Fonctionnalités** :
        - **Mode d'Affichage** : Choix entre "Jour", "Nuit", et "Automatique".
        - **Luminosité de l'Écran** : Réglable via un curseur.
        - **Unités de Mesure** : Sélection des unités pour la distance ("Kilomètres" ou "Miles") et la température ("ºF" ou "ºC").

2. **driving.qml**
    - **Description** : Configure les paramètres de conduite, y compris le mode de direction, le freinage régénératif, et les contrôles de traction.
    - **Fonctionnalités** :
        - **Mode de Direction** : Sélection entre "Confort", "Standard", et "Sport".
        - **Freinage Régénératif** : Réglage entre "Standard" et "Faible".
        - **Contrôle de Traction** : Boutons pour "Slip Start" et "Creep" avec descriptions.

3. **lights.qml**
    - **Description** : Permet de régler les paramètres des lumières extérieures et intérieures.
    - **Fonctionnalités** :
        - **Lumières Extérieures** : Contrôle des phares (On, Off, Parking, Auto) et des feux de brouillard avant.
        - **Lumières Intérieures** : Réglage des lumières d'ambiance et du dôme (On, Off, Auto).

## Avancement du Projet

### Composants Développés

- **display.qml** : La page de configuration de l'affichage est en place et permet aux utilisateurs de régler le mode d'affichage, la luminosité de l'écran, et les unités de mesure.
- **driving.qml** : Les paramètres de conduite sont configurables, permettant aux utilisateurs de choisir entre différents modes de conduite et de régler le freinage régénératif.
- **lights.qml** : Les paramètres des lumières extérieures et intérieures sont configurables avec des options pour les phares, les feux de brouillard, et les lumières d'ambiance.

### Fonctionnalités Actuelles

- **Affichage** : Réglages pour le mode d'affichage, la luminosité de l'écran, et les unités de mesure.
- **Conduite** : Configuration des modes de direction, du freinage régénératif, et des contrôles de traction.
- **Lumières** : Contrôles pour les lumières extérieures et intérieures avec des options pour différents modes.

![display](https://github.com/user-attachments/assets/7eb95f82-bc26-45aa-970d-3858c8c96922)

![light](https://github.com/user-attachments/assets/4697a678-c6bd-43ae-ac8a-ed328e847b37)

![driving](https://github.com/user-attachments/assets/aa4fdb98-1e9f-423c-94ef-098ca1816c01)

## Étapes Suivantes

1. **Développement de Fonctionnalités Supplémentaires**
    - Ajouter des options de personnalisation supplémentaires pour chaque composant.
    - Intégrer des fonctionnalités avancées telles que la gestion de la consommation énergétique et les alertes pour les paramètres critiques.

2. **Amélioration de l'Interface Utilisateur**
    - Optimiser les mises en page et les interactions pour améliorer l'expérience utilisateur.
    - Ajouter des animations et des transitions pour une meilleure fluidité et un retour visuel plus engageant.

3. **Documentation Complète**
    - Mettre à jour la documentation pour inclure des guides détaillés sur l'utilisation et la configuration de chaque composant.
    - Ajouter des exemples d'utilisation et des solutions de dépannage pour aider les utilisateurs à naviguer dans les paramètres.


## Auteurs

- **[Anas HIZEM]** - Développeur principal


---

Merci de votre intérêt pour le projet ADAVIA IHM. Pour toute question ou support, veuillez ouvrir une issue sur le dépôt GitHub.
