import QtQuick 2.0

Item {
    id: top

    property string topText: "Mon"
    property string weatherIcon: "01d"
    property string bottomText: "22*/23*"

    Text {
        id: dayText
        horizontalAlignment: Text.AlignHCenter
        width: top.width
        text: top.topText
        color:'white'
        anchors.top: parent.top
        anchors.topMargin: top.height / 5 - dayText.paintedHeight
        anchors.horizontalCenter: parent.horizontalCenter
    }

    WeatherIcon {
        id: icon
        weatherIcon: top.weatherIcon

        property real side: {
            var h = 5 * top.height / 5
            if (top.width < h)
                top.width;
            else
                h;
        }

        width: icon.side
        height: icon.side

        anchors.centerIn: parent
    }

    Text {
        id: tempText
        horizontalAlignment: Text.AlignHCenter
        width: top.width
        text: top.bottomText
        color:'white'
        anchors.bottom: parent.bottom
        anchors.bottomMargin: top.height / 5 - tempText.paintedHeight
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
