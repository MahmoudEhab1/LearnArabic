import QtQuick 2.0
import Felgo 3.0
import "../common"


SceneBase {
    id: playGames
    signal levelPressed(string selectedLevel)

    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
        source: "../scenes/assets/background6.jpg"
        fillMode: Image.PreserveAspectCrop

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
/////////////////////////////GridOfLevels

    Grid {
         anchors.centerIn: parent
         spacing: 10
         columns: 5
         MenuButton {
           text: "1"
           color: "yellow"
           width: 50
           height: 50
           onClicked: {
             levelPressed("Level1.qml")
           }
         }
         MenuButton {
           text: "2"
           color: "yellow"
           width: 50
           height: 50
           onClicked: {
             levelPressed("Level2.qml")
           }
         }
         MenuButton {
           text: "3"
           color: "yellow"
           width: 50
           height: 50
           onClicked: {
             levelPressed("Level3.qml")
           }
         }
         Repeater {
           model: 12
           MenuButton {
             text: " "
             color: "red"
             width: 50
             height: 50
           }
         }
       }
    ///////////////////
    // back button to leave scene
    MenuButton {
      text: "Back"
      anchors.right: playGames.gameWindowAnchorItem.right
      anchors.rightMargin: 25
      anchors.top: playGames.gameWindowAnchorItem.top
      anchors.topMargin: 15
      onClicked: backButtonPressed()
    }
}
