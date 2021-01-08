import QtQuick 2.0
import Felgo 3.0
import "../common"
import QtMultimedia 5.12


Scene {
    id:word4

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
        text: qsTr("اضغط على الصورة")
        color: "red"
        font.pixelSize: 20
    }
    ////////////////////////////////////
    Text {
            id: name
            x: 300
            y: 130
            text: qsTr("ديناصور")
            font.pixelSize: 40
        }
    ////////////////////////////////////
        MenuButton {
            x:70
            y:100
          width: 200
          height: 150
          color: "transparent"

          Image {

              anchors.fill: parent
              source: "../scenes/assets/dinasour.png"
          }
          SoundEffect{
          id: dinosaurS
          source: "../scenes/assets/wordSound/dinosaur.wav"
          }
          MouseArea{
          anchors.fill: parent
          onClicked: {
          dinosaurS.play()
          }
          }
        }

    ////////////////////////////////////
    MenuButton{
        id:leftArrow
        width: 60
        height: 30
        color: "transparent"
        x:0
        y:270
        onClicked: {
        var component =Qt.createComponent("../words/Word1.qml");
            var window = component.createObject(gameWindow);
            word1.visible=false
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
      anchors.right: word4.gameWindowAnchorItem.right
      anchors.rightMargin: 25
      anchors.top: word4.gameWindowAnchorItem.top
      anchors.topMargin: 15
      onClicked: {
          word4.visible=false
              learnWordsScene.visible=true
      }
    }
}

