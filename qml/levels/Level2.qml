import QtQuick 2.0
import Felgo 3.0
import "../common"
import QtMultimedia 5.12

Levelbase {
    id: level2

    Component.onCompleted: {
        ans2.enabled=false
        ans3.enabled=false
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
        source: "../scenes/assets/lion.png"
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
        id: ans1
        x:100
        y:120
        width: 50
        height: 50
        color: "transparent"
        onClicked: {
            alf.play()
            ans1A.start()
            ans2.enabled=true
        }

        AnimatedImage {

            anchors.fill: parent
            source: "../scenes/assets/LettersInGIF/ا.gif"
        }
        SoundEffect{
            id: alf
            source: "../scenes/assets/LetterSound/1.wav"
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
            dal.play()
            ans3A.start()

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
    WrongAnswer {
        x:400
        y:140
        width: 50
        height: 50
        color: "transparent"
        onClicked: {
            sheen.play()
        }

        AnimatedImage {

            anchors.fill: parent
            source: "../scenes/assets/LettersInGIF/ش.gif"
        }
        SoundEffect{
            id: sheen
            source: "../scenes/assets/LetterSound/13.wav"

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
        id: ans2
        x:350
        y:70
        width: 50
        height: 50
        color: "transparent"
        onClicked: {
            seen.play()
            ans2A.start()
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
            var component =Qt.createComponent("../testLevel1/Test5.qml");
            var window = component.createObject(gameWindow);
            level2.visible=false
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
        anchors.right: level2.right
        anchors.rightMargin: 25
        anchors.top: level2.top
        anchors.topMargin: 15
        onClicked: {
            level2.visible=false
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

}

