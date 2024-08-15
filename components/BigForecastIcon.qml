import QtQuick 2.0

Item {
    id: current

    property string topText: "20*"
    property string bottomText: "Mostly cloudy"
    property string weatherIcon: "01d"
    property real smallSide: (current.width < current.height ? current.width : current.height)

    Text {
        text: current.topText
        font.pointSize: 28
        anchors {
            top: current.top
            left: current.left
            topMargin: 5
            leftMargin: 5
        }
        color:'white'
    }

    WeatherIcon {
        weatherIcon: current.weatherIcon
        useServerIcon: false
        anchors.centerIn: parent
        anchors.verticalCenterOffset: -15
        width: current.smallSide
        height: current.smallSide
    }

    Text {
        text: current.bottomText
        font.pointSize: 23
        wrapMode: Text.WordWrap
        width: parent.width
        horizontalAlignment: Text.AlignRight
        anchors {
            bottom: current.bottom
            right: current.right
            rightMargin: 5
        }
        color:'white'

    }
}
