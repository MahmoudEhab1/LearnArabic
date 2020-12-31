import QtQuick 2.0
import Felgo 3.0
import "../common"



Levelbase {
    levelName: "Level1"
    id:level1

    Text {
        id: title
        anchors.horizontalCenter: parent.horizontalCenter
        y:20
        font.pixelSize: 20
        text: qsTr("اختر الحرف المناسب للصورة")
    }


    Grid {
         anchors.centerIn: parent
         spacing: 30
         columns: 3

         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"


           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/خ.gif"
}
         }
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/د.gif"
}
         }
         RightAnswer {
           width: 50
           height: 50
           color: "transparent"
                      AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ض.gif"
}
         }
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ط.gif"
}
         }
/////////////////////////PictureHere
         MenuButton {
           width: 50
           height: 50
           color: "transparent"
           MouseArea{
               anchors.fill: parent
           }

           Image {
               anchors.fill: parent
               source: "../scenes/assets/frog.png"
}}
////////////////////////////////////////////////////////////////
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/و.gif"
}
         }
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ش.gif"
}
         }
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ا.gif"
}
         }
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ي.gif"
}
         }

    }

    MenuButton{
        id:leftArrow
        width: 60
        height: 30
        color: "transparent"
        x:0
        y:270
        onClicked: {
        var component =Qt.createComponent("../testLevel1/Test1.qml");
            var window = component.createObject(gameWindow);
            level1.visible=false
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
      anchors.right: level1.right
      anchors.rightMargin: 25
      anchors.top: level1.top
      anchors.topMargin: 15
      onClicked: {
          level1.visible=false
          gameWindow.state= "playGames"}
    }


}
