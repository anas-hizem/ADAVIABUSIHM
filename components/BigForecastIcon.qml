import QtQuick 2.0
import "../components"

Item {
    id: current

    property string topText: "20*"
    property string bottomText: "Mostly cloudy"
    property string weatherIcon: "01d"
    property real smallSide: (current.width < current.height ? current.width : current.height)

    Text {
        text: current.topText
        font.pointSize: 50
        anchors {
            top: current.top
            right: current.right
            topMargin: 50
            rightMargin: 50
        }
        color:'white'
    }

    WeatherIcon {
        weatherIcon: current.weatherIcon
        useServerIcon: false
        anchors.verticalCenterOffset: -15
        anchors {
            top: current.top
            left: current.left
            topMargin: 10
            leftMargin: 5
        }
        width: current.smallSide * 0.65
        height: current.smallSide * 0.65
    }

    Text {
        text: current.bottomText
        wrapMode: Text.WordWrap
        width: parent.width
        anchors {
            bottom: current.bottom
            left: current.left
            bottomMargin: 20
            leftMargin: 10
        }
        color:'white'
        font.pointSize: 25
        font.family: "lato"
    }
}
