import QtQuick 2.15
import QtQuick.Controls 2.5
//
// get All the unicode icon : https://emojiterra.com/satellite/
// https://iconduck.com/ --> duotone assets
// https://www.svgrepo.com/collection/assetsax-duotone-filled-assets/ --> best assets
//https://stackoverflow.com/questions/30266881/what-is-the-right-way-to-use-qquickimageprovider
ListModel {
    ListElement {
        iconName:"qrc:/assets/Settings/quick controls.svg"
        iconColor:"transparent"
        name: "Quick Controls"
    }
    ListElement {
        iconName:"qrc:/assets/Settings/lights.svg"
        iconColor:"transparent"
        name: "Lights"
    }
    ListElement {
        iconName:"qrc:/assets/Settings/lock.svg"
        iconColor:"transparent"
        name: "Locks"
    }
    ListElement {
        iconName:"qrc:/assets/Settings/display.svg"
        iconColor:"transparent"
        name: "Display"
    }
    ListElement {
        iconName:"qrc:/assets/Settings/model3-icon-small.svg"
        iconColor:"transparent"
        name: "Driving"
    }
    ListElement {
        iconName:"qrc:/assets/Settings/steering wheel-small.svg"
        iconColor:"transparent"
        name: "Autopilot"
    }
    ListElement {
        iconName:"qrc:/assets/Settings/safety and security.svg"
        iconColor:"transparent"
        name: "Safety & Security"
    }

    ListElement {
        iconName:"qrc:/assets/Settings/service.svg"
        iconColor:"transparent"
        name: "Service"
    }

    ListElement {
        iconName: "qrc:/assets/Settings/gear.svg"
        iconColor:"transparent"
        name: "Map Settings"
    }
}
