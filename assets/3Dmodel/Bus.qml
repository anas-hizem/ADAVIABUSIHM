import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode

    Model {
        id: jalan
        x: -465.611
        y: 3.21889
        eulerRotation.x: -90
        scale.x: -914.472
        scale.y: -1151.19
        scale.z: -1151.19
        source: "meshes/jalan.mesh"

        DefaultMaterial {
            id: col_uv_jalan_material
            diffuseColor: "#ff232323"
        }
        materials: [
            col_uv_jalan_material
        ]
    }

    Model {
        id: body_bus
        y: 223.76
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/body_bus.mesh"

        DefaultMaterial {
            id: col_1_material
            diffuseColor: "#ff040503"
        }

        DefaultMaterial {
            id: col_3_material
            diffuseColor: "#ffa30100"
        }

        DefaultMaterial {
            id: col_master_bus_material
            diffuseColor: "#ffa3a3a3"
        }

        DefaultMaterial {
            id: col_2_material
            diffuseColor: "#ff000000"
        }

        DefaultMaterial {
            id: col_4_material
            diffuseColor: "#ff000000"
            opacity: 0.8
        }

        DefaultMaterial {
            id: col_5_material
            diffuseColor: "#ff030303"
        }
        materials: [
            col_1_material,
            col_3_material,
            col_master_bus_material,
            col_2_material,
            col_4_material,
            col_5_material
        ]
    }
}
