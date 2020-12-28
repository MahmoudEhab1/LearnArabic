import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
import QtQuick 2.11
import "../qml/common"


SceneBase {
    id: mainMenuScene

    signal paintingPressed

    signal letterSongsPressed

    signal learnWordsPressed

    signal playGamesPressed

////////////////////////Background
    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
        source: "../assets/background6.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle{      //transparent white30%
        anchors.fill: parent
        color: "#4DFFFFFF"
        }
    }
///////////////sun
    Image {
        id: sun
        anchors.top: parent.top
        anchors.right: parent.right
        width: 100
        height: 100
        source: "../assets/sun.png"

    }
    NumberAnimation {
            running: true             // Start automatically
            loops: Animation.Infinite // Repeat endless (unless stopped)
            target: sun             // The animated item id
            property: "rotation"      // The animated property
            from: 0                   // Start value. If not defined, the current value is used
            to: 360                   // End value
            duration: 3000            // Duration of the animation

          }
////////////////////////////WelcomeLogo
    Image {
        id: welcome
        width: 300
        height: 80
        source: "../assets/welcome.png"
        x: 10
        y: 10
    }
    NumberAnimation {
            running: true             // Start automatically
            //loops: Animation.alwaysRunToEnd // Repeat endless (unless stopped)
            target: welcome             // The animated item id
            property: "rotation"      // The animated property
            from: 0                   // Start value. If not defined, the current value is used
            to: 360                   // End value
            duration: 500            // Duration of the animation

          }
/////////////////////////////////////Painting
    Rectangle{
        id: rectangle
        width: 100
        height: 120
        color: "transparent"
        x: 360
        y: 170

        MouseArea {
             id: mouseArea
             anchors.fill: parent
             hoverEnabled: true
             onClicked: paintingPressed()

           }

        Rectangle{

            color: "transparent"
            width: 100
            height: 100

        Image {
            id: painting
            anchors.fill: parent
            source: "../assets/painting.png"
        }
        }

        Text{
            id:paintingT
            anchors.bottom: parent.bottom
            y: 50
            text: "Write & Paint"
            font.bold: true
            font.italic: true
            font.pixelSize: 15
        }

        SequentialAnimation {
            SequentialAnimation {
                    ScaleAnimator {
                        target: rectangle
                        from: 0.5
                        to: 1
                        easing.type: Easing.OutBounce;
                        duration: 1500
                }
            }
            PauseAnimation { duration: 500 }
            running: true
            //loops: Animation.alwaysRunToEnd
        }
        ColorAnimation {
                 id: animation
                 running: true
                 target: paintingT         // The animated item id
                 loops: Animation.Infinite
                 property: "color"         // The animated property
                 from: "black"
                 to: "red"             // Beautiful blue color
                 duration: 2000            // Duration of the animation

               }
    }
/////////////////////////////////////singing
    Rectangle{
        id: rectangle2
        width: 100
        height: 120
        color: "transparent"
        x: 240
        y: 140

        MouseArea {
             id: mouseArea2
             anchors.fill: parent
             hoverEnabled: true
             onClicked: letterSongsPressed()

           }
        Rectangle{

            color: "transparent"
            width: 100
            height: 100
        Image {
            id: singing
            anchors.fill: parent
            source: "../assets/sing.png"
        }
        }

        Text{
            id:singingT
            x: 0
            y: 106
            text: "Letters songs"
            font.bold: true
            font.italic: true
            font.pixelSize: 15
        }

        SequentialAnimation {
            SequentialAnimation {
                    ScaleAnimator {
                        target: rectangle2
                        from: 0.5
                        to: 1
                        easing.type: Easing.OutBounce;
                        duration: 1500
                }
            }
            PauseAnimation { duration: 500 }
            running: true
            //loops: Animation.alwaysRunToEnd
        }
        ColorAnimation {
                 id: animation2
                 running: true
                 target: singingT         // The animated item id
                 loops: Animation.Infinite
                 property: "color"         // The animated property
                 from: "black"
                 to: "red"             // Beautiful blue color
                 duration: 2000            // Duration of the animation

               }
    }
/////////////////////////////learnwords
    Rectangle{
        id: rectangle3
        width: 100
        height: 120
        color: "transparent"
        x: 115
        y: 180

        MouseArea {
             id: mouseArea3
             anchors.fill: parent
             hoverEnabled: true
             onClicked: learnWordsPressed()

           }
        Rectangle{

            color: "transparent"
            width: 100
            height: 100
        Image {
            id: learnWords
            anchors.fill: parent
            source: "../assets/learnWords.png"
        }
        }

        Text{
            id:learnWordsT
            x: 0
            y: 106
            text: "Learn Words"
            font.bold: true
            font.italic: true
            font.pixelSize: 15
        }

        SequentialAnimation {
            SequentialAnimation {
                    ScaleAnimator {
                        target: rectangle3
                        from: 0.5
                        to: 1
                        easing.type: Easing.OutBounce;
                        duration: 1500
                }
            }
            PauseAnimation { duration: 500 }
            running: true
            //loops: Animation.alwaysRunToEnd
        }
        ColorAnimation {
                 id: animation3
                 running: true
                 target: learnWordsT         // The animated item id
                 loops: Animation.Infinite
                 property: "color"         // The animated property
                 from: "black"
                 to: "red"             // Beautiful blue color
                 duration: 2000            // Duration of the animation

               }
    }
///////////////////////////////////////////playGames
    Rectangle{
        id: rectangle4
        width: 100
        height: 120
        color: "transparent"
        x: 0
        y: 130

        MouseArea {
             id: mouseArea4
             anchors.fill: parent
             hoverEnabled: true
             onClicked: playGamesPressed()

           }
        Rectangle{

            color: "transparent"
            width: 100
            height: 100
        Image {
            id: letterForPicture
            anchors.fill: parent
            source: "../assets/letterForPicture.png"
        }
        }

        Text{
            id:letterForPictureT
            x: 0
            y: 106
            text: "Play Games"
            font.bold: true
            font.italic: true
            font.pixelSize: 15
        }

        SequentialAnimation {
            SequentialAnimation {
                    ScaleAnimator {
                        target: rectangle4
                        from: 0.5
                        to: 1
                        easing.type: Easing.OutBounce;
                        duration: 1500
                }
            }
            PauseAnimation { duration: 500 }
            running: true
            //loops: Animation.alwaysRunToEnd
        }
        ColorAnimation {
                 id: animation4
                 running: true
                 target: letterForPictureT         // The animated item id
                 loops: Animation.Infinite
                 property: "color"         // The animated property
                 from: "black"
                 to: "red"             // Beautiful blue color
                 duration: 2000            // Duration of the animation

               }
    }
//////////////////////////////////////



}
