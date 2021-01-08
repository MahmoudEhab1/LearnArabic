import QtQuick 2.0
import Felgo 3.0
import "../common"

Scene {
    id:test4

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
               source: "../scenes/assets/lion.png"
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
         RightAnswer {
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


    // back button to leave scene
    MenuButton {
      text: "رجوع"
      anchors.right: test4.gameWindowAnchorItem.right
      anchors.rightMargin: 25
      anchors.top: test4.gameWindowAnchorItem.top
      anchors.topMargin: 15
      onClicked: {
          test4.visible=false
          gameWindow.state= "playGames"}
    }

}
