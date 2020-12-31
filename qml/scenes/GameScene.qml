import QtQuick 2.0
import Felgo 3.0
import "../common"

SceneBase {
   id:gameScene
   // the filename of the current level gets stored here, it is used for loading the
   property string activeLevelFileName
   // the currently loaded level gets stored here
   property variant activeLevel
   // score
      property int score: 0

   // set the name of the current level, this will cause the Loader to load the corresponding level
   function setLevel(fileName) {
     activeLevelFileName = fileName
   }

   // background
   Rectangle {
       anchors.fill: parent.gameWindowAnchorItem
   Image {
       id: background
       transformOrigin: Item.Center
       anchors.fill: parent
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
   }

//   // back button to leave scene
//   MenuButton {
//     text: "Back"
//     // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device
//     anchors.right: gameScene.gameWindowAnchorItem.right
//     anchors.rightMargin: 10
//     anchors.top: gameScene.gameWindowAnchorItem.top
//     anchors.topMargin: 10
//     onClicked: {
//       backButtonPressed()
//       activeLevel = undefined
//       activeLevelFileName = ""
//     }
//   }

   // load levels at runtime
   Loader {
        id: loader
        source: activeLevelFileName !== "" ? "../levels/" + activeLevelFileName : ""
        onLoaded: {
          // reset the score
          score = 0
          // since we did not define a width and height in the level item itself, we are doing it here
          item.width = gameScene.width
          item.height = gameScene.height
          // store the loaded level as activeLevel for easier access
          activeLevel = item
        }
      }

      // we connect the gameScene to the loaded level
      Connections {
        // only connect if a level is loaded, to prevent errors
        target: activeLevel !== undefined ? activeLevel : null
        // increase the score when the rectangle is clicked
        onRectanglePressed: {
          score=score+10
        }
      }

      // display the current score
      Text {
        anchors.left: anchors.left
        anchors.top: gameScene.gameWindowAnchorItem.top
        anchors.topMargin: 30
        color: "red"
        font.pixelSize: 40
        text: score
      }


 }
