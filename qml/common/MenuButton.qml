import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.12
import QtQuick 2.0

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
        font.pixelSize: 10
        font.bold:true
        color: "black"
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: button.clicked()
        onPressed: button.opacity = 0.5
        onReleased: button.opacity = 1
    }
}
