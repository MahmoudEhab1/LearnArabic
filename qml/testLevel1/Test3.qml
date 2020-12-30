import QtQuick 2.0
import Felgo 3.0
import "../common"

Scene {
    id:test3

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

         RightAnswer {
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
         WrongAnswer {
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
               source: "../scenes/assets/sheep.png"
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
        var component =Qt.createComponent("../testLevel1/Test4.qml");
            var window = component.createObject(gameWindow);
            test3.visible=false
            window.show
        }
        Image {
            id: leftArrow1
            anchors.fill: parent
            source: "../scenes/assets/leftArrow.png"

        }

    }
//    MenuButton {
//      text: "Back"
//      anchors.right: playGames.gameWindowAnchorItem.right
//      anchors.rightMargin: 25
//      anchors.top: playGames.gameWindowAnchorItem.top
//      anchors.topMargin: 15
//      onClicked: {
//          backButtonPressed()
//      }
//    }

}
