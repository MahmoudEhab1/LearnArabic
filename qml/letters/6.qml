import QtQuick 2.0
import Felgo 3.0
import "../common"


Scene {
    id:ha
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
        source: "../scenes/assets/WriteDraw/ح.jpg"
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
            var component =Qt.createComponent("../letters/7.qml");
            var window = component.createObject(gameWindow);
            ha.visible=false
            window.show
        }
        Image {
            id: leftArrow1
            anchors.fill: parent
            source: "../scenes/assets/leftArrow.png"

        }

    }
    MenuButton {
        text: "رجوع"
        anchors.right: ha.gameWindowAnchorItem.right
        anchors.rightMargin: 25
        anchors.top: ha.gameWindowAnchorItem.top
        anchors.topMargin: 15
        onClicked: {
            ha.visible=false
            gameWindow.state = "mainMenu"
        }
    }
}
