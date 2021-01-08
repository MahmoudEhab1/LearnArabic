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
        anchors.left: parent.left
        width: 100
        height: 100
        source: "../assets/sun.png"

    }
    NumberAnimation {
        running: true             // Start automatically
        loops: Animation.Infinite // Repeat endless (unless stopped)
        target: sun
        property: "rotation"
        from: 0                   // Start value. If not defined, the current value is used
        to: 360                   // End value
        duration: 3000

    }
    ////////////////////////////WelcomeLogo
    Image {
        id: welcome
        width: 300
        height: 80
        source: "../assets/welcome2.png"
        x: 180
        y: 10
    }
    NumberAnimation {
        running: true
        target: welcome
        property: "rotation"
        from: 0
        to: 370
        duration: 800

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
            onClicked: {
                paintingPressed()
                paintingScene.visible=true
            }
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
            text: "ارسم واكتب"
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
        }
        ColorAnimation {
            id: animation
            running: true
            target: paintingT
            loops: Animation.Infinite
            property: "color"
            from: "black"
            to: "red"
            duration: 2000

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
            text: "اغاني الحروف"
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
        }
        ColorAnimation {
            id: animation2
            running: true
            target: singingT
            loops: Animation.Infinite
            property: "color"
            from: "black"
            to: "red"
            duration: 2000

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
            onClicked: {learnWordsPressed()
                learnWordsScene.visible=true}

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
            text: "تعلم الكلمات"
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

        }
        ColorAnimation {
            id: animation3
            running: true
            target: learnWordsT
            loops: Animation.Infinite
            property: "color"
            from: "black"
            to: "red"
            duration: 2000
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
            text: "هيا نلعب"
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

        }
        ColorAnimation {
            id: animation4
            running: true
            target: letterForPictureT
            loops: Animation.Infinite
            property: "color"
            from: "black"
            to: "red"
            duration: 2000

        }
    }
    //////////////////////////////////////MuteBackgroundMusic

    MenuButton{
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.bottomMargin: 23
        anchors.leftMargin: 5
        width: 20
        height: 20
        onClicked: settings.musicEnabled = !settings.musicEnabled
        Image {
            id: muteBackgroundMusic
            anchors.fill: parent
            source: "../assets/StopMusic.png"
        }
    }
    Text{
        text: "موسيقى الخلفية"
        font.bold: true
        font.pixelSize: 7
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 10
    }

}
