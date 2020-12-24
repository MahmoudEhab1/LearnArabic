import QtQuick 2.0
import Felgo 3.0
import "../common"


SceneBase {
    id: letterSongsScene



////////////////////////////////BackgroundImage
    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
        source: "../scenes/assets/background6.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle{      //transparent white30%
        anchors.fill: parent
        color: "#9DFFFFFF"

        Rectangle{
        id: insideBackground
        anchors.centerIn: parent
        color: "#9DFFFFFF"
        width: 530
        height: 300
        }
        }
}
        ////////////////////right and left arrows
                Rectangle{
                    id:rightArrow
                    width: 60
                    height: 30
                    color: "transparent"
                    x:422
                    y:270

                    Image {
                        id: rightArrow1
                        anchors.fill: parent
                        source: "../scenes/assets/rightArrow.png"
                    }
                }

                Rectangle{
                    id:leftArrow
                    width: 60
                    height: 30
                    color: "transparent"
                    x:0
                    y:270
                    Image {
                        id: leftArrow1
                        anchors.fill: parent
                        source: "../scenes/assets/leftArrow.png"
                    }
                }

        ///////////////////
//////////////////////////////////////////////lettersImage

//        Image {
//            id: letters
//            source: "../scenes/assets/letters.png"
//            width: 400
//            height: 315
//            x:80
//            y:30

//        }

//////////////////////////////////////////////backButton


    // back button to leave scene
     MenuButton {
       text: "Back"
       anchors.right: letterSongsScene.gameWindowAnchorItem.right
       anchors.rightMargin: 25
       anchors.top: letterSongsScene.gameWindowAnchorItem.top
       anchors.topMargin: 15
       onClicked: backButtonPressed()
     }
}
