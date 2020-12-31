import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12
import QtQuick 2.11
import "../qml/common"
import "../qml/scenes"

GameWindow {
    id: gameWindow

    screenWidth: 960
    screenHeight: 640

    MainMenuScene{
        id: mainMenuScene


        // listen to the button signals of the scene and change the state according to it
           onPaintingPressed: gameWindow.state = "painting"
           onLetterSongsPressed: gameWindow.state = "letterSongs"
           onLearnWordsPressed: gameWindow.state = "learnWords"
           onPlayGamesPressed: gameWindow.state = "playGames"

/////////////////////Exit on pressing back button
           onBackButtonPressed: {
                nativeUtils.displayMessageBox("Really quit the game?", "", 2);
              }
              // listen to the return value of the MessageBox
              Connections {
                target: nativeUtils
                onMessageBoxFinished: {
                  // only quit, if the activeScene is menuScene - the messageBox might also get opened from other scenes in your code
                  if(accepted)
                      Qt.quit()
                  }
                }

    }

    PaintingScene{
        id: paintingScene
        onBackButtonPressed: gameWindow.state = "mainMenu"
    }
    LetterSongsScene{
        id:letterSongsScene
        onBackButtonPressed: gameWindow.state = "mainMenu"
    }

    LearnWordsScene{
        id: learnWordsScene
        onBackButtonPressed: gameWindow.state = "mainMenu"
    }

    PlayGames{
        id: playGames
        onLevelPressed: {
             // selectedLevel is the parameter of the levelPressed signal
             gameScene.setLevel(selectedLevel)
             gameWindow.state = "game"

           }
        onBackButtonPressed: gameWindow.state = "mainMenu"
    }
    GameScene {
        id: gameScene
        onBackButtonPressed: gameWindow.state = "playGames"

    }

    EntityManager{
        id: entityManager
    }

    // default state is mainmenu -> default scene is MainmenuScene
       state: "mainMenu"

       // state machine, takes care reversing the PropertyChanges when changing the state like changing the opacity back to 0
       states: [
         State {
           name: "mainMenu"
           PropertyChanges {target: mainMenuScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: mainMenuScene}
         },
         State {
           name: "painting"
           PropertyChanges {target: paintingScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: paintingScene}
         },
         State {
           name: "letterSongs"
           PropertyChanges {target: letterSongsScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: letterSongsScene}
         },
         State {
           name: "learnWords"
           PropertyChanges {target: learnWordsScene; opacity: 1}
           PropertyChanges {target: gameWindow; activeScene: learnWordsScene}
         },
           State {
             name: "playGames"
             PropertyChanges {target: playGames; opacity: 1}
             PropertyChanges {target: gameWindow; activeScene: playGames}
           },
           State {
                  name: "game"
                  PropertyChanges {target: gameScene; opacity: 1}
                  PropertyChanges {target: gameWindow; activeScene: gameScene}
                }

       ]

}




