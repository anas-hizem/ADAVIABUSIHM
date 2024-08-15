import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode

    Model {
        id: body
        eulerRotation.x: -90
        eulerRotation.y: -75.1159
        scale.x: 28.0798
        scale.y: 28.0798
        scale.z: 28.0797
        source: "meshes/body.mesh"

        DefaultMaterial {
            id: mAIN_material
            diffuseColor: "#ffcccccc"
        }
        materials: [
            mAIN_material
        ]
    }

    Model {
        id: front_Right_Wheel_
        eulerRotation.x: -90
        eulerRotation.y: -75.1159
        scale.x: 28.0798
        scale.y: 28.0798
        scale.z: 28.0797
        source: "meshes/front_Right_Wheel_.mesh"
        materials: [
            mAIN_material
        ]
    }

    Model {
        id: front_Left_Wheel
        eulerRotation.x: -90
        eulerRotation.y: -75.1159
        scale.x: 28.0798
        scale.y: 28.0798
        scale.z: 28.0797
        source: "meshes/front_Left_Wheel.mesh"
        materials: [
            mAIN_material
        ]
    }

    Model {
        id: back_Right_Wheel
        eulerRotation.x: -90
        eulerRotation.y: -75.1159
        scale.x: 28.0798
        scale.y: 28.0798
        scale.z: 28.0797
        source: "meshes/back_Right_Wheel.mesh"
        materials: [
            mAIN_material
        ]
    }

    Model {
        id: back_Left_Wheel
        eulerRotation.x: -90
        eulerRotation.y: -75.1159
        scale.x: 28.0798
        scale.y: 28.0798
        scale.z: 28.0797
        source: "meshes/back_Left_Wheel.mesh"
        materials: [
            mAIN_material
        ]
    }

    Model {
        id: trunk_
        eulerRotation.x: -90
        eulerRotation.y: -75.1159
        scale.x: 28.0798
        scale.y: 28.0798
        scale.z: 28.0797
        source: "meshes/trunk_.mesh"
        materials: [
            mAIN_material
        ]
    }
}
