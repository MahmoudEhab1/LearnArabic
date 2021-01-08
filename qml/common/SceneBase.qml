import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12


Scene {
    id: baseScene
    anchors.fill: baseScene.gameWindowAnchorItem

    opacity: 0
    visible: opacity > 0
    enabled: visible


    Behavior on opacity {
        NumberAnimation {property: "opacity"; easing.type: Easing.InOutQuad; duration:1000}
    }

}
