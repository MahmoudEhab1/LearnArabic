import QtQuick 2.0
import Felgo 3.0
import "../levels"
import "../common"



Scene {
    id: test5

    Text {
        id: title
        anchors.horizontalCenter: parent.horizontalCenter
        y:20
        font.pixelSize: 20
        text: qsTr("رتب الحروف حسب الصورة")
    }

    Image {
        id: lion
        anchors.horizontalCenter: parent.horizontalCenter
        y:130
        source: "../scenes/assets/dog.png"
        width: 100
        height: 100
    }
    MenuButton {
      x:30
      y:100
      width: 50
      height: 50
      color: "transparent"

      AnimatedImage {
          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/خ.gif"
      }
      SoundEffect{
      id: khaa
      source: "../scenes/assets/LetterSound/7.wav"
      }
      MouseArea{
      id: letter1
      anchors.fill: parent
      onClicked: {
      khaa.play()
      }
      }
}
    MenuButton {
        x:100
        y:120
      width: 50
      height: 50
      color: "transparent"

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ا.gif"
      }
      SoundEffect{
      id: alf
      source: "../scenes/assets/LetterSound/1.wav"
      }
      MouseArea{
      id: letter7
      anchors.fill: parent
      onClicked: {
      alf.play()
      }
      }
    }
    MenuButton {
        x:300
        y:130
      width: 50
      height: 50
      color: "transparent"

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/د.gif"
      }
      SoundEffect{
      id: dal
      source: "../scenes/assets/LetterSound/8.wav"
      }
      MouseArea{
      id: letter14
      anchors.fill: parent
      onClicked: {
      dal.play()
      }
      }
    }
    MenuButton {
        x:400
        y:140
      width: 50
      height: 50
      color: "transparent"

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ش.gif"
      }
      SoundEffect{
      id: sheen
      source: "../scenes/assets/LetterSound/13.wav"
      }
      MouseArea{
      id: letter9
      anchors.fill: parent
      onClicked: {
      sheen.play()
      }
      }
    }
    MenuButton {
        x:50
        y:150
      width: 50
      height: 50
      color: "transparent"

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ك.gif"
      }
      SoundEffect{
      id: kaf
      source: "../scenes/assets/LetterSound/22.wav"
      }
      MouseArea{
      id: letter28
      anchors.fill: parent
      onClicked: {
      kaf.play()
      }
      }
    }
    MenuButton {
        x:350
        y:70
      width: 50
      height: 50
      color: "transparent"

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/س.gif"
      }
      SoundEffect{
      id:seen
      source: "../scenes/assets/LetterSound/12.wav"
      }
      MouseArea{
      id: letter10
      anchors.fill: parent
      onClicked: {
      seen.play()
      }
      }
    }
    MenuButton {
        x:400
        y:70
      width: 50
      height: 50
      color: "transparent"

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ن.gif"
      }
      SoundEffect{
      id: non
      source: "../scenes/assets/LetterSound/25.wav"
      }
      MouseArea{
      id: letter25
      anchors.fill: parent
      onClicked: {
      non.play()
      }
      }
    }

////////////////////////////

    MenuButton{
        id:leftArrow
        width: 60
        height: 30
        color: "transparent"
        x:0
        y:270
        onClicked: {
        var component =Qt.createComponent("../testLevel1/Test6.qml");
            var window = component.createObject(gameWindow);
            test5.visible=false
        }
        Image {
            id: leftArrow1
            anchors.fill: parent
            source: "../scenes/assets/leftArrow.png"

        }

    }

    // back button to leave scene
    MenuButton {
      text: "Back"
      anchors.right: test5.gameWindowAnchorItem.right
      anchors.rightMargin: 25
      anchors.top: test5.gameWindowAnchorItem.top
      anchors.topMargin: 15
      onClicked: {
          test5.destroy()
          gameWindow.state= "playGames"}
    }

}
