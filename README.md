# Projet ADAVIA IHM

## Description

Le projet ADAVIA IHM vise à développer une Interface Homme-Machine (IHM) pour la gestion d'une navette autonome. Ce fichier README documente la création d'un widget pour afficher le niveau de batterie et les modes associés.

## Widget de Niveau de Batterie

### Description

Le widget de niveau de batterie affiche les informations suivantes :
- Le niveau de batterie en pourcentage
- L'icône de batterie correspondant au mode du véhicule
- La distance estimée restante en fonction du mode du véhicule
- Le niveau de batterie associé à différents modes du véhicule

### Fonctionnalités

1. **Affichage du Niveau de Batterie**
   - Le widget affiche le niveau de batterie sous forme de pourcentage. La couleur du texte change en fonction du mode du véhicule.

2. **Icône de Batterie**
   - Une icône spécifique à chaque mode du véhicule (Éco, Sport, Normal, Stationnement) est affichée pour représenter visuellement le niveau de batterie. 

3. **Distance Estimée Restante**
   - La distance estimée restante est affichée en miles, avec des informations sur la distance restante dans chaque mode de conduite.

4. **Modes du Véhicule**
   - Le widget ajuste son affichage en fonction du mode de conduite du véhicule :
     - **Mode Normal** : Affiche les informations générales sur la batterie.
     - **Mode Sport** : Affiche des données spécifiques pour une conduite sportive.
     - **Mode Éco** : Affiche des données optimisées pour une conduite économique.
     - **Mode Stationnement** : Affiche des informations pertinentes lorsque le véhicule est en stationnement.

### Détails de l'Implémentation

- **Fond du Widget** : Une image d'arrière-plan avec un effet d'opacité et des coins arrondis est utilisée pour le fond du widget.
- **Dispositions** : Utilisation de `RowLayout` et `ColumnLayout` pour organiser les éléments textuels et les images.
- **Icônes et Couleurs** : Le widget utilise des icônes et des couleurs différentes pour représenter visuellement le niveau de batterie et le mode du véhicule.

### Images de Référence

- **Icône de Batterie** : Affiche l'icône correspondante au mode du véhicule.
- **Icones d'Énergie Éco** : Affiche des icônes spécifiques pour chaque mode pour indiquer le niveau d'énergie.

### Prochaines Étapes

- Intégrer le widget dans l'IHM principale.



Pour toute question ou suggestion, veuillez ouvrir une issue sur le [dépôt GitHub](URL du dépôt).
