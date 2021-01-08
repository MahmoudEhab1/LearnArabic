import QtQuick 2.0
import Felgo 3.0
import "../common"

SceneBase {
    id:gameScene
    property string activeLevelFileName
    property variant activeLevel
    property int score: 0

    function setLevel(fileName) {
        activeLevelFileName = fileName
    }

    //////////////////////// background
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
    // load levels at runtime
    Loader {
        id: loader
        source: activeLevelFileName !== "" ? "../levels/" + activeLevelFileName : ""
        onLoaded: {
            score = 0
            item.width = gameScene.width
            item.height = gameScene.height
            activeLevel = item
        }
    }
    ////////////////////////
    Connections {
        target: activeLevel !== undefined ? activeLevel : null
        onRectanglePressed: {
            score=score+10
        }
    }
    /////////////////////////
    Text {
        anchors.left: anchors.left
        anchors.top: gameScene.gameWindowAnchorItem.top
        anchors.topMargin: 30
        color: "red"
        font.pixelSize: 40
        text: score
    }


}
