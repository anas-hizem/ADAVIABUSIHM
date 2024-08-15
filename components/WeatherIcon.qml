import QtQuick 2.0

Item {
    id: container

    property string weatherIcon: "01d"

    //server icons are too small. we keep using the local images
    property bool useServerIcon: true

    Image {
        id: img
        source: {
            if (useServerIcon)
                "http://openweathermap.org/img/w/" + container.weatherIcon + ".png"
            else {
                switch (weatherIcon) {
                case "01d":
                case "01n":
                     "qrc:/assets/weather/weather-sunny.png"
                    break;
                case "02d":
                case "02n":
                    "qrc:/assets/weather/weather-sunny-very-few-clouds.png"
                    break;
                case "03d":
                case "03n":
                    "qrc:/assets/weather/weather-few-clouds.png"
                    break;
                case "04d":
                case "04n":
                    "qrc:/assets/weather/weather-overcast.png"
                    break;
                case "09d":
                case "09n":
                    "qrc:/assets/weather/weather-showers.png"
                    break;
                case "10d":
                case "10n":
                    "qrc:/assets/weather/weather-showers.png"
                    break;
                case "11d":
                case "11n":
                    "qrc:/assets/weather/weather-thundershower.png"
                    break;
                case "13d":
                case "13n":
                    "qrc:/assets/weather/weather-snow.png"
                    break;
                case "50d":
                case "50n":
                    "qrc:/assets/weather/weather-fog.png"
                    break;
                default:
                    "qrc:/assets/weather/weather-unknown.png"
                }
            }
        }
        smooth: true
        anchors.fill: parent
    }
}
