# ADAVIA IHM - Widget Date et Heure en Temps Réel

## Description

Ce widget QML affiche la date et l'heure en temps réel dans une interface utilisateur développée pour le projet ADAVIA IHM. Le widget utilise QtQuick, QtQuick.Controls, et QtGraphicalEffects pour créer une interface visuellement attrayante avec des fonctionnalités de mise en forme de texte et d'images.

## Fonctionnalités

- **Affichage de l'heure actuelle** : Affiche l'heure au format 12 heures avec indication AM/PM.
- **Affichage de la date actuelle** : Affiche la date complète, incluant le jour de la semaine, le mois, le jour du mois, et l'année.
- **Personnalisation de l'apparence** : Utilisation d'une police personnalisée et d'une image de fond.

## Structure du Code

Voici le code QML utilisé pour créer le widget :

```qml
  import QtQuick 2.15
  import QtQuick.Layouts 1.15
  import QtQuick.Controls 2.15
  import QtGraphicalEffects 1.15
  
  Rectangle {
      color: "#151515"
      Layout.preferredWidth: 450
      Layout.preferredHeight: 150
      radius: 15
  
      FontLoader {
          id: digitalFont
          source: "qrc:/assets/font/DigitalNumbers-Regular.ttf"
      }
  
      Image {
          id: backgroundImage
          anchors.fill: parent
          source: "qrc:/assets/background/DateBackground.jpg"
          fillMode: Image.PreserveAspectCrop
          opacity: 1
          property bool rounded: true
  
          layer.enabled: rounded
          layer.effect: OpacityMask {
              maskSource: Item {
                  width: backgroundImage.width
                  height: backgroundImage.height
  
                  Rectangle {
                      anchors.centerIn: parent
                      width: backgroundImage.width
                      height: backgroundImage.height
                      radius: 20
                  }
              }
          }
      }
  
      ColumnLayout {
          anchors {
              left:parent.left
              verticalCenter: parent.verticalCenter
              leftMargin: 50
          }
  
          Text {
              Layout.alignment: Qt.AlignLeft
              text: formatTime(new Date())
              font.pixelSize: 42
              font.weight: Font.Bold
              //font.family: digitalFont.name
              font.family: "lato"
              color: "#FFFFFF"
          }
          Text {
              Layout.alignment: Qt.AlignLeft
              text: formatDate(new Date())
              font.pixelSize: 20
              font.weight: Font.Light
              //font.family: digitalFont.name
              font.family: "lato"
              color: "#FFFFFF"
          }
      }
  
      function formatDate(date) {
          var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
          var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
          var day = days[date.getDay()];
          var month = months[date.getMonth()];
          var dayOfMonth = date.getDate();
          var year = date.getFullYear();
          return day + ", " + month + " " + dayOfMonth + " " + year;
      }
  
      function formatTime(date) {
          var hours = date.getHours();
          var minutes = date.getMinutes();
          var ampm = hours >= 12 ? 'PM' : 'AM';
          hours = hours % 12;
          hours = hours ? hours : 12; // Handle midnight
          minutes = minutes < 10 ? '0' + minutes : minutes;
          return hours + ':' + minutes + ' ' + ampm;
      }
  }

```


## Explication du Code :

1. **Rectangle** : Conteneur principal du widget avec des paramètres de couleur, taille, et bord arrondi.
2. **FontLoader** : Charge une police personnalisée pour l'affichage du texte.
3. **Image** : Affiche une image de fond avec des effets de masque pour arrondir les coins.
4. **ColumnLayout** : Dispose les éléments de texte verticalement avec un espacement à gauche.
5. **Text** : Affiche l'heure et la date en utilisant des fonctions de formatage définies dans le code.
6. **formatDate** : Fonction pour formater la date au format "Jour, Mois Jour Année".
7. **formatTime** : Fonction pour formater l'heure au format 12 heures avec AM/PM.

## Usage

1. **Affichage en temps réel** : Le widget met automatiquement à jour l'heure et la date en temps réel.
2. **Personnalisation** : Modifiez les propriétés de couleur, taille de la police, et images pour adapter le widget à votre thème.















