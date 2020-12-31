import QtQuick 2.0
import Felgo 3.0
import "../common"

Scene {
    id:word1

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
            text: qsTr("غوريلا")
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
              source: "../scenes/assets/gorilla.png"
          }
          SoundEffect{
          id: sheen
          source: "../scenes/assets/wordSound/Gorilla.wav"
          }
          MouseArea{
          anchors.fill: parent
          onClicked: {
          sheen.play()
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
        var component =Qt.createComponent("../words/Word2.qml");
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
      text: "Back"
      anchors.right: word1.gameWindowAnchorItem.right
      anchors.rightMargin: 25
      anchors.top: word1.gameWindowAnchorItem.top
      anchors.topMargin: 15
      onClicked: backButtonPressed()
    }
}
