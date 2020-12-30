import QtQuick 2.0
import Felgo 3.0
import "../common"


Scene {
    id:yaa
    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent
        source: "../scenes/assets/background6.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle{      //transparent white30%
        anchors.fill: parent
        color: "#4DFFFFFF"

        Rectangle{
        id: insideBackground
        anchors.centerIn: parent
        color: "#9DFFFFFF"
        width: 530
        height: 300
        }
        }
    }
    }
    Image {
        anchors.centerIn: parent
        source: "../scenes/assets/WriteDraw/ي.jpg"
        width: 200
        height: 300
    }

    MenuButton{
        id:leftArrow
        width: 60
        height: 30
        color: "transparent"
        x:0
        y:270
        onClicked: {
        var component =Qt.createComponent("../letters/1.qml");
            var window = component.createObject(gameWindow);
            test7.visible=false
        }
        Image {
            id: leftArrow1
            anchors.fill: parent
            source: "../scenes/assets/leftArrow.png"

        }

    }
}
