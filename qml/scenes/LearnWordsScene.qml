import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
import "../common"

SceneBase {
    id: learnWordsScene

    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
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
    Text {
        id: title
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        text: qsTr("اضغط على الصور لتسمع صوت الكلمات")
        color: "red"
        font.pixelSize: 20
    }
    ////////////////////////////////////
    Text {
        id: name
        x: 300
        y: 130
        text: qsTr("هيا نبدا")
        font.pixelSize: 40
    }
    ////////////////////////////////////
    MenuButton {
        x:70
        y:100
        width: 150
        height: 100
        color: "transparent"
        onClicked: {
            var component =Qt.createComponent("../words/Word1.qml");
            var window = component.createObject(gameWindow);
            learnWordsScene.visible=false
            window.show
        }
        Image {

            anchors.fill: parent
            source: "../scenes/assets/leftArrow.png"
        }

    }

    ////////////////////////////////////

    // back button to leave scene
    MenuButton {
        text: "رجوع"
        anchors.right: learnWordsScene.gameWindowAnchorItem.right
        anchors.rightMargin: 25
        anchors.top: learnWordsScene.gameWindowAnchorItem.top
        anchors.topMargin: 15
        onClicked: {
            gameWindow.state = "mainMenu"
        }
    }

}
