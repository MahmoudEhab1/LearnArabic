import QtQuick 2.0
import Felgo 3.0
import "../common"


Scene {
    id:test1


    Text {
        id: title
        anchors.horizontalCenter: parent.horizontalCenter
        y:15
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
               source: "../scenes/assets/LettersInGIF/ش.gif"
}
         }
         RightAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ك.gif"
}
         }
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"
                      AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ن.gif"
}
         }
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ث.gif"
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
               source: "../scenes/assets/dog.png"
}}
////////////////////////////////////////////////////////////////
         WrongAnswer {
           width: 50
           height: 50
           color: "transparent"

           AnimatedImage {
               anchors.fill: parent
               source: "../scenes/assets/LettersInGIF/ص.gif"
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
        var component =Qt.createComponent("../testLevel1/Test2.qml");
            var window = component.createObject(gameWindow);
            test1.visible=false
            window.show
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
      anchors.right: test1.gameWindowAnchorItem.right
      anchors.rightMargin: 25
      anchors.top: test1.gameWindowAnchorItem.top
      anchors.topMargin: 15
      onClicked: {
          test1.destroy()
          gameWindow.state= "playGames"
      }
    }

}
