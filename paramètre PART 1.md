# ADAVIA IHM - Interface des Paramètres de la Navette

## Description

Le projet **ADAVIA IHM** vise à développer une Interface Homme-Machine (IHM) complète pour une navette autonome. Cette documentation détaille l'interface des paramètres de la navette, permettant de configurer divers aspects du véhicule via une interface conviviale.

## Contenu

L'interface des paramètres est constituée de plusieurs pages permettant de régler différentes configurations de la navette. Chaque page est représentée par un composant QML distinct. Voici un aperçu des sections et composants de l'interface :

### Composants Principaux

1. **SettingsDialog**
    - **Description** : Composant principal contenant toutes les pages de configuration.
    - **Fonctionnalité** : Gère le changement de page en fonction de l'index sélectionné dans la liste latérale.

2. **QuickControl.qml**
    - **Description** : Interface pour la gestion de la luminosité de l'écran, des lumières extérieures, et des ajustements divers.
    - **Fonctionnalité** : Permet de régler la luminosité de l'affichage, de contrôler les lumières extérieures, et de gérer les miroirs et le volant.

3. **Autopilote.qml**
    - **Description** : Interface pour la gestion des fonctionnalités d'autopilotage.
    - **Fonctionnalité** : Permet de régler la distance de suivi du régulateur de vitesse et d'activer des fonctions telles que l'autosteer et le changement de voie automatique.

### Interface Utilisateur

- **Liste Latérale** : Une liste verticale affichant les différentes pages de paramètres disponibles. Chaque élément de la liste est associé à une page spécifique et utilise des icônes pour faciliter la navigation.
  
- **Affichage Principal** : Une zone de contenu principale qui affiche le composant correspondant à la page sélectionnée dans la liste latérale. Utilise un `StackView` pour gérer la navigation entre les pages.

### Fonctionnalités Clés

- **Gestion de l'Éclairage** : Ajustement de la luminosité de l'écran et des lumières extérieures, y compris les feux de brouillard.
  
- **Réglages des Miroirs et du Volant** : Options pour ajuster et plier les miroirs ainsi que régler le volant de direction.

- **Autopilotage** : Configuration du régulateur de vitesse, avec possibilité de modifier la distance de suivi et d'activer des fonctionnalités d'assistance à la conduite.

## Instructions d'Utilisation

1. **Lancer l'Application** : Ouvrez le fichier `SettingsDialog.qml` dans Qt Creator pour démarrer l'application de configuration.

2. **Naviguer dans l'Interface** : Utilisez la liste latérale pour sélectionner la page de paramètres souhaitée. Les pages disponibles incluent la gestion de l'affichage, des lumières, des réglages divers, et des options d'autopilotage.

3. **Modifier les Paramètres** : Sur chaque page, utilisez les contrôles disponibles pour ajuster les paramètres selon vos besoins. Les modifications sont appliquées en temps réel.

## Avancement du Projet

### Interface des Paramètres

L'**interface des paramètres** permet de configurer divers aspects de la navette. Elle est constituée d'un menu principal avec plusieurs pages de paramètres, chacune dédiée à un aspect spécifique de la navette. Les principales fonctionnalités incluent la gestion de l'affichage, de l'éclairage, du verrouillage, des réglages du volant, de l'autopilote, et plus encore.

### Fichiers Principaux

#### `SettingsDialog.qml`

Définit le cadre principal de la fenêtre des paramètres avec un composant `SplitView` :
- **Panneau de Navigation** : Contient une liste d'options permettant de naviguer entre différentes pages de paramètres.
- **Panneau de Contenu** : Affiche le contenu des pages de paramètres sélectionnées.

Les pages disponibles incluent :
- Contrôle Rapide (`QuickControl`)
- Éclairage (`Lights`)
- Verrouillage (`Lock`)
- Affichage (`Display`)
- Conduite (`Driving`)
- Autopilote (`Autopilote`)
- Sécurité (`SafetyAndSecurity`)
- Service (`Service`)

#### `QuickControl.qml`

Gère les paramètres liés au contrôle rapide :
- **Luminosité de l'Écran** : Réglable à l'aide d'un curseur.
- **Éclairage Extérieur** : Options pour activer ou désactiver les phares, les feux de stationnement, etc.
- **Réglages Divers** : Ajustements pour les miroirs et le volant, y compris des boutons pour plier les miroirs.

#### `Autopilote.qml`

Gère les paramètres de l'autopilote :
- **Distance de Suivi du Régulateur de Vitesse** : Réglable à l'aide de boutons "+" et "-".
- **Autosteer (Beta)** : Permet d'activer ou de désactiver le mode de conduite automatique.
- **Changement de Voie Automatique** : Permet d'activer ou de désactiver le changement de voie automatique.


![quick control](https://github.com/user-attachments/assets/ceac9aa4-06d4-4578-ac2a-98c0e8f7ffad)

![autopilote](https://github.com/user-attachments/assets/49e1a739-3eb2-4677-ab58-8fe132e4f4a8)


## Étapes Suivantes

1. **Développement les autres Pages de Paramètres** : Créer des pages supplémentaires pour gérer des fonctionnalités spécifiques.

2. **Amélioration des Interactions Utilisateur** : Ajouter des animations et des transitions pour rendre l'interface plus intuitive et engageante.

3. **Documentation Complète** : Compléter la documentation pour couvrir toutes les fonctionnalités avancées et fournir des exemples d'utilisation détaillés.


## Auteurs

- **[Anas HIZEM]** - Développeur principal

---

Merci de votre intérêt pour le projet ADAVIA IHM. Pour toute question ou support, n'hésitez pas à ouvrir une issue sur le dépôt GitHub.
