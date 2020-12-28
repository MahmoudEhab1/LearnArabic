import QtQuick 2.0
import Felgo 3.0
import "../common"
import QtMultimedia 5.12


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

                Grid {
                     anchors.centerIn: parent
                     spacing: 10
                     columns: 7
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {
                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/خ.gif"
                       }

                       SoundEffect{
                       id: khaa
                       source: "../scenes/assets/LetterSongs/khaa.wav"
                       }
                       MouseArea{
                       id: touch_handler
                       anchors.fill: parent
                       onClicked: {
                       khaa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ح.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ج.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ث.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ت.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ب.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ا.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ص.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ش.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/س.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ز.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ر.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ذ.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/د.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ق.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ف.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/غ.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ع.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ظ.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ط.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ض.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ي.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/و.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ه.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ن.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/م.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ل.gif"
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"
                       onClicked: {
                       }

                       Image {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ك.gif"
                       }
                     }

                   }


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
