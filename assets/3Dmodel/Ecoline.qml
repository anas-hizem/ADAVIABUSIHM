import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: scene
    eulerRotation.x: -90

    PointLight {
        id: lamp_001
        x: 2.88035
        y: -7.08653
        z: 3.57279
        eulerRotation.x: 37.261
        eulerRotation.y: 3.16371
        eulerRotation.z: 106.936
        constantFade: 1
        quadraticFade: 0.00111109
    }

    PerspectiveCamera {
        id: camera
        x: 7.48113
        y: -6.50764
        z: 5.34367
        eulerRotation.x: 63.5593
        eulerRotation.z: 46.6919
        clipNear: 0.1
        clipFar: 100
        fieldOfView: 49.1343
        fieldOfViewOrientation: Camera.Horizontal
    }

    PointLight {
        id: lamp
        x: 3.95707
        y: 7.84439
        z: 1.8523
        eulerRotation.x: 37.261
        eulerRotation.y: 3.16371
        eulerRotation.z: 106.936
        constantFade: 1
        quadraticFade: 0.00111109
    }

    Model {
        id: kursi_supir
        eulerRotation.x: 90
        source: "meshes/kursi_supir.mesh"

        DefaultMaterial {
            id: inter_material
        }
        materials: [
            inter_material
        ]
    }

    Model {
        id: dasbor
        eulerRotation.x: 90
        source: "meshes/dasbor.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: gorden
        eulerRotation.x: 90
        source: "meshes/gorden.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: lantai
        eulerRotation.x: 90
        source: "meshes/lantai.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: hitam
        eulerRotation.x: 90
        source: "meshes/hitam.mesh"

        DefaultMaterial {
            id: hitam_material
            diffuseColor: "#ff030303"
        }
        materials: [
            hitam_material
        ]
    }

    Model {
        id: pelek
        eulerRotation.x: 90
        source: "meshes/pelek.mesh"

        DefaultMaterial {
            id: putih_material
            diffuseColor: "#ffcccccc"
        }
        materials: [
            putih_material
        ]
    }

    Model {
        id: slebor
        eulerRotation.x: 90
        source: "meshes/slebor.mesh"
        materials: [
            hitam_material
        ]
    }

    Model {
        id: kursi_kernet
        eulerRotation.x: 90
        source: "meshes/kursi_kernet.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: lampu_depan
        eulerRotation.x: 90
        source: "meshes/lampu_depan.mesh"

        DefaultMaterial {
            id: gloss_material
        }
        materials: [
            gloss_material
        ]
    }

    Model {
        id: lampu_blkng
        eulerRotation.x: 90
        source: "meshes/lampu_blkng.mesh"
        materials: [
            gloss_material
        ]
    }

    Model {
        id: tapasap
        eulerRotation.x: 90
        source: "meshes/tapasap.mesh"

        DefaultMaterial {
            id: bodi_material
            diffuseColor: "#ff1a101e"
        }
        materials: [
            bodi_material
        ]
    }

    Model {
        id: skat
        eulerRotation.x: 90
        source: "meshes/skat.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: krum
        eulerRotation.x: 90
        source: "meshes/krum.mesh"
        materials: [
            putih_material
        ]
    }

    Model {
        id: slap
        eulerRotation.x: 90
        source: "meshes/slap.mesh"
        materials: [
            hitam_material
        ]
    }

    Model {
        id: sayap
        eulerRotation.x: 90
        source: "meshes/sayap.mesh"

        DefaultMaterial {
            id: bodi3_material
        }
        materials: [
            bodi3_material
        ]
    }

    Model {
        id: ban
        eulerRotation.x: 90
        source: "meshes/ban.mesh"

        DefaultMaterial {
            id: hitam_abu_material
            diffuseColor: "#ff0c0c0c"
        }
        materials: [
            hitam_abu_material
        ]
    }

    Model {
        id: wc
        eulerRotation.x: 90
        source: "meshes/wc.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: kursi
        eulerRotation.x: 90
        source: "meshes/kursi.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: ac
        eulerRotation.x: 90
        source: "meshes/ac.mesh"
        materials: [
            bodi3_material
        ]
    }

    Model {
        id: apion
        eulerRotation.x: 90
        source: "meshes/apion.mesh"
        materials: [
            bodi3_material
        ]
    }

    Model {
        id: wipper
        eulerRotation.x: 90
        source: "meshes/wipper.mesh"
        materials: [
            hitam_material
        ]
    }

    Model {
        id: bodi
        eulerRotation.x: 90
        source: "meshes/bodi.mesh"
        materials: [
            bodi3_material
        ]
    }

    Model {
        id: daleman
        eulerRotation.x: 90
        source: "meshes/daleman.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: bokong_hitam
        eulerRotation.x: 90
        source: "meshes/bokong_hitam.mesh"
        materials: [
            hitam_abu_material
        ]
    }

    Model {
        id: krum_hitam
        eulerRotation.x: 90
        source: "meshes/krum_hitam.mesh"
        materials: [
            hitam_material
        ]
    }

    Model {
        id: kumis2
        eulerRotation.x: 90
        source: "meshes/kumis2.mesh"
        materials: [
            hitam_abu_material
        ]
    }

    Model {
        id: knalpot
        eulerRotation.x: 90
        source: "meshes/knalpot.mesh"
        materials: [
            putih_material
        ]
    }

    Model {
        id: lis
        eulerRotation.x: 90
        source: "meshes/lis.mesh"
        materials: [
            hitam_material
        ]
    }

    Model {
        id: dek
        eulerRotation.x: 90
        source: "meshes/dek.mesh"
        materials: [
            inter_material
        ]
    }

    Model {
        id: tangga
        eulerRotation.x: 90
        source: "meshes/tangga.mesh"
        materials: [
            hitam_material
        ]
    }

    Model {
        id: lampu_sein
        eulerRotation.x: 90
        source: "meshes/lampu_sein.mesh"
        materials: [
            gloss_material
        ]
    }

    Model {
        id: plat
        eulerRotation.x: 90
        source: "meshes/plat.mesh"
        materials: [
            hitam_abu_material
        ]
    }

    Model {
        id: kaca
        eulerRotation.x: 90
        source: "meshes/kaca.mesh"

        DefaultMaterial {
            id: kaca_material
            opacity: 0.484536
        }
        materials: [
            kaca_material
        ]
    }

    Model {
        id: kumis
        eulerRotation.x: 90
        source: "meshes/kumis.mesh"
        materials: [
            hitam_abu_material
        ]
    }
}
