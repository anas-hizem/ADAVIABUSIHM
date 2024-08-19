import QtQuick 2.0
import WeatherInfo 1.0
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15
import "../components"


Rectangle {
    color: "#151515"
    id: weatherArea
    Layout.preferredWidth: 450
    Layout.preferredHeight: 300
    radius: 20
    state: "loading"

    states: [
        State {
            name: "loading"
            PropertyChanges { target: main; opacity: 0 }
            PropertyChanges { target: wait; opacity: 1 }
        },
        State {
            name: "ready"
            PropertyChanges { target: main; opacity: 1 }
            PropertyChanges { target: wait; opacity: 0 }
        }
    ]
    AppModel {
        id: model
    }

    Connections {
        target: model
        onReadyChanged: {
            if (model.ready)
                weatherArea.state = "ready"
            else
                weatherArea.state = "loading"
        }
    }
    Item {
        id: wait
        anchors.fill: parent

        Text {
            text: "Loading weather data..."
            anchors.centerIn: parent
            font.pointSize: 18
            color: 'white'
        }
    }

    Item {
        id: main
        anchors.fill: parent
        anchors.horizontalCenter: weatherArea.horizontalCenter
        anchors.verticalCenter: weatherArea.verticalCenter

        // Image {
        //     id: backgroundImage
        //     anchors.fill: parent
        //     source: "qrc:/assets/background/weatherBackground.jpg"
        //     fillMode: Image.PreserveAspectCrop
        //     opacity: 0.7
        // }
        Image {
            id: img
            anchors.fill: parent
            source: "qrc:/assets/background/weatherBackground.jpg"
            fillMode: Image.PreserveAspectCrop
            opacity: 0.7

            property bool rounded: true
            property bool adapt: true

            layer.enabled: rounded
            layer.effect: OpacityMask {
                maskSource: Item {
                    width: img.width
                    height: img.height

                    Rectangle {
                        anchors.centerIn: parent
                        width: img.width
                        height: img.height
                        radius: 20
                        color: "black"
                    }
                }
            }
        }

        Column {
            spacing: 6

            anchors {
                fill: parent
                topMargin: 6; bottomMargin: 6; leftMargin: 6; rightMargin: 6
            }

            Item {
                width: main.width
                height: 20

                Text {
                    text: (model.hasValidCity ? model.city : "Unknown location") + (model.useGps ? " (GPS)" : "")
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    anchors {
                        leftMargin: 10
                        topMargin: 10
                    }

                    color:'white'
                    font.pointSize: 25
                    font.family: "lato"
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if (model.useGps) {
                            model.useGps = false
                            model.city = "Tunis"
                        } else {
                            switch (model.city) {
                            case "Tunis":
                                model.city = "Monastir"
                                break
                            case "Monastir":
                                model.city = "Manouba"
                                break
                            case "Manouba":
                                model.city = "Sousse"
                                break
                            case "Sousse":
                                model.useGps = true
                                break
                            }
                        }
                    }
                }
            }
            BigForecastIcon {
                id: current

                width: main.width - 12
                height: 2 * (main.height - 24) / 3

                weatherIcon: (model.hasValidWeather
                          ? model.weather.weatherIcon
                          : "01d")
                topText: (model.hasValidWeather
                          ? model.weather.temperature
                          : "??")
                bottomText: (model.hasValidWeather
                             ? model.weather.weatherDescription
                             : "No weather data")

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        model.refreshWeather()
                    }
                }
            }

            Row {
                id: iconRow
                spacing: 10

                width: main.width - 30
                height: (main.height - 24) / 5

                property real iconWidth: iconRow.width / 4 - 5
                property real iconHeight: iconRow.height

                ForecastIcon {
                    id: forecast1
                    width: iconRow.iconWidth
                    height: iconRow.iconHeight

                    topText: (model.hasValidWeather ?
                              model.forecast[0].dayOfWeek : "??")
                    bottomText: (model.hasValidWeather ?
                                 model.forecast[0].temperature : "??/??")
                    weatherIcon: (model.hasValidWeather ?
                              model.forecast[0].weatherIcon : "01d")
                }
                ForecastIcon {
                    id: forecast2
                    width: iconRow.iconWidth
                    height: iconRow.iconHeight

                    topText: (model.hasValidWeather ?
                              model.forecast[1].dayOfWeek : "??")
                    bottomText: (model.hasValidWeather ?
                                 model.forecast[1].temperature : "??/??")
                    weatherIcon: (model.hasValidWeather ?
                              model.forecast[1].weatherIcon : "01d")
                }
                ForecastIcon {
                    id: forecast3
                    width: iconRow.iconWidth
                    height: iconRow.iconHeight

                    topText: (model.hasValidWeather ?
                              model.forecast[2].dayOfWeek : "??")
                    bottomText: (model.hasValidWeather ?
                                 model.forecast[2].temperature : "??/??")
                    weatherIcon: (model.hasValidWeather ?
                              model.forecast[2].weatherIcon : "01d")
                }
                ForecastIcon {
                    id: forecast4
                    width: iconRow.iconWidth
                    height: iconRow.iconHeight

                    topText: (model.hasValidWeather ?
                              model.forecast[3].dayOfWeek : "??")
                    bottomText: (model.hasValidWeather ?
                                 model.forecast[3].temperature : "??/??")
                    weatherIcon: (model.hasValidWeather ?
                              model.forecast[3].weatherIcon : "01d")
                }

            }
        }
    }
}
