import QtQuick 2.0
import Felgo 3.0
import "../levels"
import "../common"
import QtMultimedia 5.12

Scene {
    id: test8

    Component.onCompleted: {
        ans2.enabled=false
        ans3.enabled=false
        ans4.enabled=false
    }

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
        source: "../scenes/assets/frog.png"
        width: 100
        height: 100
    }
    WrongAnswer {
      x:30
      y:100
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      khaa.play()
      }
      AnimatedImage {
          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/خ.gif"
      }
      SoundEffect{
      id: khaa
      source: "../scenes/assets/LetterSound/7.wav"
      }

}
    RightAnswer {
        id: ans2
        x:100
        y:120
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      faa.play()
          ans3.enabled=true
          ans2A.start()
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ف.gif"
      }
      SoundEffect{
      id: faa
      source: "../scenes/assets/LetterSound/20.wav"
      }

    }
    WrongAnswer {
        x:300
        y:130
      width: 50
      height: 50
      color: "transparent"

      onClicked: {
      dal.play()

      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/د.gif"
      }
      SoundEffect{
      id: dal
      source: "../scenes/assets/LetterSound/8.wav"
      }

    }
    RightAnswer {
        id:ans1
        x:400
        y:140
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      dad.play()
          ans2.enabled=true
          ans1A.start()
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ض.gif"
      }
      SoundEffect{
      id: dad
      source: "../scenes/assets/LetterSound/15.wav"

      }

    }
    WrongAnswer {
        x:50
        y:150
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      kaf.play()
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ك.gif"
      }
      SoundEffect{
      id: kaf
      source: "../scenes/assets/LetterSound/22.wav"
      }
    }
    RightAnswer {
        id: ans3
        x:350
        y:70
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      dal.play()
          ans4.enabled=true
          ans3A.start()
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/د.gif"
      }
      SoundEffect{
      id:dal
      source: "../scenes/assets/LetterSound/8.wav"
      }

    }
    RightAnswer {
        id: ans4
        x:400
        y:70
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      ein.play()
          ans4A.start()
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ع.gif"
      }
      SoundEffect{
      id: ein
      source: "../scenes/assets/LetterSound/18.wav"
      }

    }
////////////////////////////
    // back button to leave scene
    MenuButton {
      text: "رجوع"
      anchors.right: test8.gameWindowAnchorItem.right
      anchors.rightMargin: 25
      anchors.top: test8.gameWindowAnchorItem.top
      anchors.topMargin: 15
      onClicked: {
          test8.visible=false
          gameWindow.state= "playGames"}
    }
    //////////////////////////////////////////Animation

        ParallelAnimation {
            id:ans1A
                  NumberAnimation {
                    target: ans1
                    property: "y"
                    to: 250
                    duration: 1000
                  }
                  NumberAnimation {
                    target: ans1
                    property: "x"
                    to: 270
                    duration: 1000
                  }
                }
        ParallelAnimation {
            id:ans2A
                  NumberAnimation {
                    target: ans2
                    property: "y"
                    to: 250
                    duration: 1000
                  }
                  NumberAnimation {
                    target: ans2
                    property: "x"
                    to: 220
                    duration: 1000
                  }
                }
        ParallelAnimation {
            id:ans3A
                  NumberAnimation {
                    target: ans3
                    property: "y"
                    to: 250
                    duration: 1000
                  }
                  NumberAnimation {
                    target: ans3
                    property: "x"
                    to: 170
                    duration: 1000
                  }
                }
        ParallelAnimation {
            id:ans4A
                  NumberAnimation {
                    target: ans4
                    property: "y"
                    to: 250
                    duration: 1000
                  }
                  NumberAnimation {
                    target: ans4
                    property: "x"
                    to: 120
                    duration: 1000
                  }
                }

}
