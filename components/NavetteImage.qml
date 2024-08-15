import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.1
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick3D 1.15
import QtQuick3D.Materials 1.15
import QtQuick3D.Effects 1.15
import QtQuick3D.Helpers 1.15
import "../assets/3Dmodel"

Item {
    id: root
    Layout.preferredWidth: 1000
    Layout.preferredHeight: 500

    property real rotationX: 0
    property real rotationY: -45
    property real lastX: 0
    property real lastY: 0
    property real scaleFactor: 2.5

    // New properties for light rotation
    property real lightRotationX: -100
    property real lightRotationY: 100

    View3D {
        anchors.fill: parent

        environment: SceneEnvironment {
            clearColor: "#262626"
            backgroundMode: SceneEnvironment.Color
        }

        PerspectiveCamera {
            position: Qt.vector3d(0, 0 , 2000)
            Component.onCompleted: lookAt(Qt.vector3d(0, 0, 0))
        }

        DirectionalLight {
            color: "white"
            eulerRotation.x: lightRotationX
            eulerRotation.y: lightRotationY
            castsShadow: true
        }
        // Additional Directional Light
        DirectionalLight {
            color: "white"
            eulerRotation.x: 30
            eulerRotation.y: 90
            castsShadow: false
        }
        DirectionalLight {
            color: "white"
            eulerRotation.x: lightRotationX
            eulerRotation.y: lightRotationY
            castsShadow: true
            shadowBias: 0.01 // Ajuste la douceur des ombres
        }

        PointLight {
            position: Qt.vector3d(1000, 1000, 1000)
            color: "white"
            constantFade: 0.5
            linearFade: 0.1
            quadraticFade: 0.9
        }
        SpotLight {
            position: Qt.vector3d(500, 500, 1000)
            color: "blue"
            coneAngle: 45
            innerConeAngle: 30
            constantFade: 0.5
            linearFade: 0.1
            quadraticFade: 0.9
        }
        DefaultMaterial {
            specularAmount: 0.8 // Ajuste la brillance du matériau
        }
        // Animation for rotating the bus
        NumberAnimation {
            id: rotationAnimation
            target: bus
            property: "eulerRotation.y"
            from: 0
            to: 360
            duration: 5000
            loops: Animation.Infinite // Infinite rotation
            running: true
        }
        NumberAnimation {
            id: lightPositionAnimation
            target: pointLight
            property: "position.z"
            from: 1000
            to: -1000
            duration: 5000
            loops: Animation.Infinite // Infinite movement
            running: true
        }

        WhiteBus {
            id: bus
            scale: Qt.vector3d(scaleFactor, scaleFactor, scaleFactor)
            eulerRotation: Qt.vector3d(rotationX, rotationY, 0)
            position: Qt.vector3d(0, -500, 0) // Adjust the Y value to lower the bus
        }
        MouseArea {
            anchors.fill: parent
            drag.target: parent

            onWheel: {
                scaleFactor += wheel.angleDelta.y / 120 // Adjust the scale factor change rate
                if (scaleFactor < 0.1) scaleFactor = 0.1 // Prevent scale factor from being too small
            }

            onPressed: {
                lastX = mouse.x
                lastY = mouse.y
            }

            onPositionChanged: {
                if (drag.active) {
                    var deltaX = mouse.x - lastX
                    var deltaY = mouse.y - lastY
                    rotationX += deltaY / 5
                    rotationY += deltaX / 5
                    lastX = mouse.x
                    lastY = mouse.y

                    // Update light rotation based on the model's rotation
                    lightRotationX = -rotationX
                    lightRotationY = rotationY
                }
            }
        }
    }
}
