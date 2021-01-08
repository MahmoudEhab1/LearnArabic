import QtQuick 2.0
import Felgo 3.0
import "../levels"
import "../common"
import QtMultimedia 5.12


Scene {
    id: test7

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
        source: "../scenes/assets/sheep.png"
        width: 100
        height: 100
    }
    RightAnswer {
        id:ans1
      x:30
      y:100
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      khaa.play()
          ans2.enabled=true
          ans1A.start()
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
      raa.play()
          ans3.enabled=true
          ans2A.start()
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ر.gif"
      }
      SoundEffect{
      id: raa
      source: "../scenes/assets/LetterSound/10.wav"
      }

    }
    RightAnswer {
        id: ans3
        x:300
        y:130
      width: 50
      height: 50
      color: "transparent"

      onClicked: {
      waw.play()
      ans4.enabled=true
          ans3A.start()
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/و.gif"
      }
      SoundEffect{
      id: waw
      source: "../scenes/assets/LetterSound/27.wav"
      }

    }
    RightAnswer {
        id: ans4
        x:400
        y:140
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      faa.play()
          ans4A.start()
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
    WrongAnswer {
        x:350
        y:70
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      seen.play()
      ans3.enabled=true
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/س.gif"
      }
      SoundEffect{
      id:seen
      source: "../scenes/assets/LetterSound/12.wav"
      }

    }
    WrongAnswer {
        x:400
        y:70
      width: 50
      height: 50
      color: "transparent"
      onClicked: {
      non.play()
      }

      AnimatedImage {

          anchors.fill: parent
          source: "../scenes/assets/LettersInGIF/ن.gif"
      }
      SoundEffect{
      id: non
      source: "../scenes/assets/LetterSound/25.wav"
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
        var component =Qt.createComponent("../testLevel1/Test8.qml");
            var window = component.createObject(gameWindow);
            test7.visible=false
        }
        Image {
            id: leftArrow1
            anchors.fill: parent
            source: "../scenes/assets/leftArrow.png"

        }

    }


    // back button to leave scene
    MenuButton {
      text: "رجوع"
      anchors.right: test7.gameWindowAnchorItem.right
      anchors.rightMargin: 25
      anchors.top: test7.gameWindowAnchorItem.top
      anchors.topMargin: 15
      onClicked: {
          test7.visible=false
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
