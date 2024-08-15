import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode

    Model {
        id: base2_int_
        x: 22.0391
        y: 167.009
        z: 160.464
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/base2_int_.mesh"

        DefaultMaterial {
            id: base2_material
            diffuseColor: "#ffcccccc"
        }
        materials: [
            base2_material
        ]
    }

    Model {
        id: bus
        x: 9.73684
        y: 151.468
        z: 44.2738
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/bus.mesh"

        DefaultMaterial {
            id: bus_material
            diffuseColor: "#ffcccccc"
        }
        materials: [
            bus_material,
            base2_material
        ]
    }

    Model {
        id: glass
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/glass.mesh"

        DefaultMaterial {
            id: glass_material
            diffuseColor: "#ffcccccc"
        }
        materials: [
            glass_material
        ]
    }

    Model {
        id: w_F_1
        x: -88.6987
        y: 46.517
        z: 244.058
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/w_F_1.mesh"
        materials: [
            base2_material
        ]
    }

    Model {
        id: w_F_0
        x: 88.6987
        y: 46.517
        z: 244.058
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/w_F_0.mesh"
        materials: [
            base2_material
        ]
    }

    Model {
        id: w_R_1
        x: -75.5778
        y: 46.5491
        z: -220.746
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/w_R_1.mesh"
        materials: [
            base2_material
        ]
    }

    Model {
        id: w_R_0
        x: 75.5778
        y: 46.5491
        z: -220.746
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/w_R_0.mesh"
        materials: [
            base2_material
        ]
    }

    Model {
        id: steering_w
        x: 60.9143
        y: 152.762
        z: 377.569
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/steering_w.mesh"
        materials: [
            base2_material
        ]
    }
}
