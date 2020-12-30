import QtQuick 2.0
import Felgo 3.0
import QtQuick 2.9
import "../common"

SceneBase {
    id:paintingScene
    anchors.fill: parent.gameWindowAnchorItem

    Image {
        id: background
        fillMode: Image.PreserveAspectCrop
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
        source: "../scenes/assets/background6.jpg"

        Rectangle{      //transparent white30%
        anchors.fill: parent
        color: "#4DFFFFFF"

        Rectangle{
        id: insideBackground
        anchors.centerIn: parent
        color: "#9DFFFFFF"
        width: 530
        height: 300
        }
        }
    }


/////////////////////////Painting

    LineItem {
      color: "transparent"
      lineWidth: 5
      points: [
        {"x":0, "y":0},
        {"x":mousePos.x, "y":mousePos.y}
      ]
    }

    LineItem {
      color: "transparent"
      points: [
        {"x":scene.width, "y":scene.height},
        {"x":mousePos.x+20, "y":mousePos.y+20}
      ]
    }

    Rectangle {
      id: mousePos
      color: "transparent"
      width: 30
      height: 30
      Image {
          id: brush
          anchors.fill: parent
          source: "../scenes/assets/brush.png"
      }
    }

    MouseArea{
      anchors.fill: parent
      onPositionChanged: {
        mousePos.x = mouseX
        mousePos.y = mouseY

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
        var component =Qt.createComponent("../letters/1.qml");
            var window = component.createObject(gameWindow);
            paintingScene.visible=false
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
          text: "Back"
          anchors.right: paintingScene.gameWindowAnchorItem.right
          anchors.rightMargin: 25
          anchors.top: paintingScene.gameWindowAnchorItem.top
          anchors.topMargin: 15
          onClicked: backButtonPressed()
        }
}
