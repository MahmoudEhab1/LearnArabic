import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12

Rectangle {
    id: button
    width: buttonText.width+ paddingHorizontal*2
    height: buttonText.height+ paddingVertical*2

    color: "green"
    radius: 10

    property int paddingHorizontal: 10
    property int paddingVertical: 5

    property alias text: buttonText.text

    signal clicked

    Text {
        id: buttonText
        anchors.centerIn: parent
        font.pixelSize: 18
        color: "black"
    }
    SoundEffect{
        id:right
        source: "../scenes/assets/correctAnswer1.wav"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked:{
            button.clicked()
            rectanglePressed()
            button.enabled = false
            right.play()
        }
        onPressed: button.color = "green"

    }
}
