import QtQuick 2.0
import Felgo 3.0
import QtQuick 2.9
import QtQuick 2.13
import "../common"

SceneBase {
    id: paintingScene
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

    Text {
        id: title
        text: qsTr("يمكنك فقط نقل الرسومات في كشكولك الخاص حتى تحديث اخر")
        anchors.centerIn: parent
    }


/////////////////////////Painting

    Item {
            id: glassPane
            anchors.fill: parent

            Rectangle {
              parent: glassPane
              color: "transparent"
              x: handler.point.position.x - width / 2
              y: handler.point.position.y - height / 2
              width: dp(22)
              height: width
              radius: width / 2
              Image{
              anchors.fill:parent
              source: "../scenes/assets/brush.png"
              }
            }

            HoverHandler {
              id: handler
              enabled: true
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
          text: "رجوع"
          anchors.right: paintingScene.gameWindowAnchorItem.right
          anchors.rightMargin: 25
          anchors.top: paintingScene.gameWindowAnchorItem.top
          anchors.topMargin: 15
          onClicked: backButtonPressed()
        }
}
