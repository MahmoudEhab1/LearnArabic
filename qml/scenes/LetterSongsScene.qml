import QtQuick 2.0
import Felgo 3.0
import "../common"
import QtMultimedia 5.12


SceneBase {
    id: letterSongsScene



////////////////////////////////BackgroundImage
    Image {
        id: background
        transformOrigin: Item.Center
        anchors.fill: parent.gameWindowAnchorItem
        source: "../scenes/assets/background6.jpg"
        fillMode: Image.PreserveAspectCrop

        Rectangle{      //transparent white30%
        anchors.fill: parent
        color: "#9DFFFFFF"

        Rectangle{
        id: insideBackground
        anchors.centerIn: parent
        color: "#9DFFFFFF"
        width: 530
        height: 300
        }
        }
}
//////////////////////////////////////////////lettersImage

                Grid {
                     anchors.centerIn: parent
                     spacing: 10
                     columns: 7
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {
                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/خ.gif"
                       }

                       SoundEffect{
                       id: khaa
                       source: "../scenes/assets/LetterSongs/khaa.wav"
                       }
                       MouseArea{
                       id: letter1
                       anchors.fill: parent
                       onClicked: {
                       khaa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ح.gif"
                       }

                    SoundEffect{
                       id: hhaa
                       source: "../scenes/assets/LetterSongs/hhaa.wav"
                       }
                    MouseArea{
                       id: letter2
                       anchors.fill: parent
                       onClicked: {
                       hhaa.play()
                       }
                    }
                     }

                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ج.gif"
                       }
                       SoundEffect{
                          id: geem
                          source: "../scenes/assets/LetterSongs/geem.wav"
                          }
                       MouseArea{
                          id: letter3
                          anchors.fill: parent
                          onClicked: {
                          geem.play()
                          }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ث.gif"
                       }
                       SoundEffect{
                          id: thaa
                          source: "../scenes/assets/LetterSongs/thaa.wav"
                          }
                       MouseArea{
                          id: letter4
                          anchors.fill: parent
                          onClicked: {
                          thaa.play()
                          }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ت.gif"
                       }
                       SoundEffect{
                          id: taa
                          source: "../scenes/assets/LetterSongs/taa.wav"
                          }
                       MouseArea{
                          id: letter5
                          anchors.fill: parent
                          onClicked: {
                          taa.play()
                          }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"


                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ب.gif"
                       }
                       SoundEffect{
                       id: baa
                       source: "../scenes/assets/LetterSongs/baa.wav"
                       }
                       MouseArea{
                       id: letter6
                       anchors.fill: parent
                       onClicked: {
                       baa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ا.gif"
                       }
                       SoundEffect{
                       id: alf
                       source: "../scenes/assets/LetterSongs/Alef.wav"
                       }
                       MouseArea{
                       id: letter7
                       anchors.fill: parent
                       onClicked: {
                       alf.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ص.gif"
                       }
                       SoundEffect{
                       id: ssad
                       source: "../scenes/assets/LetterSongs/ssad.wav"
                       }
                       MouseArea{
                       id: letter8
                       anchors.fill: parent
                       onClicked: {
                       ssad.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ش.gif"
                       }
                       SoundEffect{
                       id: sheen
                       source: "../scenes/assets/LetterSongs/sheen.wav"
                       }
                       MouseArea{
                       id: letter9
                       anchors.fill: parent
                       onClicked: {
                       sheen.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/س.gif"
                       }
                       SoundEffect{
                       id:seen
                       source: "../scenes/assets/LetterSongs/seen.wav"
                       }
                       MouseArea{
                       id: letter10
                       anchors.fill: parent
                       onClicked: {
                       seen.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ز.gif"
                       }
                       SoundEffect{
                       id: zay
                       source: "../scenes/assets/LetterSongs/zay.wav"
                       }
                       MouseArea{
                       id: letter11
                       anchors.fill: parent
                       onClicked: {
                       zay.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ر.gif"
                       }
                       SoundEffect{
                       id: raa
                       source: "../scenes/assets/LetterSongs/raa.wav"
                       }
                       MouseArea{
                       id: letter12
                       anchors.fill: parent
                       onClicked: {
                       raa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ذ.gif"
                       }
                       SoundEffect{
                       id: zal
                       source: "../scenes/assets/LetterSongs/zal.wav"
                       }
                       MouseArea{
                       id: letter13
                       anchors.fill: parent
                       onClicked: {
                       zal.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/د.gif"
                       }
                       SoundEffect{
                       id: dal
                       source: "../scenes/assets/LetterSongs/Dal.wav"
                       }
                       MouseArea{
                       id: letter14
                       anchors.fill: parent
                       onClicked: {
                       dal.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ق.gif"
                       }
                       SoundEffect{
                       id: kkaf
                       source: "../scenes/assets/LetterSongs/kkaf.wav"
                       }
                       MouseArea{
                       id: letter15
                       anchors.fill: parent
                       onClicked: {
                       kkaf.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ف.gif"
                       }
                       SoundEffect{
                       id: faa
                       source: "../scenes/assets/LetterSongs/faa.wav"
                       }
                       MouseArea{
                       id: letter16
                       anchors.fill: parent
                       onClicked: {
                       faa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/غ.gif"
                       }
                       SoundEffect{
                       id: gheen
                       source: "../scenes/assets/LetterSongs/gheen.wav"
                       }
                       MouseArea{
                       id: letter17
                       anchors.fill: parent
                       onClicked: {
                       gheen.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ع.gif"
                       }
                       SoundEffect{
                       id: ain
                       source: "../scenes/assets/LetterSongs/ain.wav"
                       }
                       MouseArea{
                       id: letter18
                       anchors.fill: parent
                       onClicked: {
                       ain.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ظ.gif"
                       }
                       SoundEffect{
                       id: zaa
                       source: "../scenes/assets/LetterSongs/Zaa.wav"
                       }
                       MouseArea{
                       id: letter19
                       anchors.fill: parent
                       onClicked: {
                       zaa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ط.gif"
                       }
                       SoundEffect{
                       id: ttaa
                       source: "../scenes/assets/LetterSongs/ttaa.wav"
                       }
                       MouseArea{
                       id: letter20
                       anchors.fill: parent
                       onClicked: {
                       ttaa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ض.gif"
                       }
                       SoundEffect{
                       id: ddad
                       source: "../scenes/assets/LetterSongs/Ddad.wav"
                       }
                       MouseArea{
                       id: letter21
                       anchors.fill: parent
                       onClicked: {
                       ddad.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ي.gif"
                       }
                       SoundEffect{
                       id: yaa
                       source: "../scenes/assets/LetterSongs/yaa.wav"
                       }
                       MouseArea{
                       id: letter22
                       anchors.fill: parent
                       onClicked: {
                       yaa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/و.gif"
                       }
                       SoundEffect{
                       id: waw
                       source: "../scenes/assets/LetterSongs/waw.wav"
                       }
                       MouseArea{
                       id: letter23
                       anchors.fill: parent
                       onClicked: {
                       waw.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ه.gif"
                       }
                       SoundEffect{
                       id: haa
                       source: "../scenes/assets/LetterSongs/haa.wav"
                       }
                       MouseArea{
                       id: letter24
                       anchors.fill: parent
                       onClicked: {
                       haa.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ن.gif"
                       }
                       SoundEffect{
                       id: non
                       source: "../scenes/assets/LetterSongs/non.wav"
                       }
                       MouseArea{
                       id: letter25
                       anchors.fill: parent
                       onClicked: {
                       non.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/م.gif"
                       }
                       SoundEffect{
                       id: meem
                       source: "../scenes/assets/LetterSongs/meem.wav"
                       }
                       MouseArea{
                       id: letter26
                       anchors.fill: parent
                       onClicked: {
                       meem.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ل.gif"
                       }
                       SoundEffect{
                       id: lam
                       source: "../scenes/assets/LetterSongs/lam.wav"
                       }
                       MouseArea{
                       id: letter27
                       anchors.fill: parent
                       onClicked: {
                       lam.play()
                       }
                       }
                     }
                     MenuButton {
                       width: 50
                       height: 50
                       color: "transparent"

                       AnimatedImage {

                           anchors.fill: parent
                           source: "../scenes/assets/LettersInGIF/ك.gif"
                       }
                       SoundEffect{
                       id: kaf
                       source: "../scenes/assets/LetterSongs/kaf.wav"
                       }
                       MouseArea{
                       id: letter28
                       anchors.fill: parent
                       onClicked: {
                       kaf.play()
                       }
                       }
                     }

                   }


//////////////////////////////////////////////backButton


    // back button to leave scene
     MenuButton {
       text: "Back"
       anchors.right: letterSongsScene.gameWindowAnchorItem.right
       anchors.rightMargin: 25
       anchors.top: letterSongsScene.gameWindowAnchorItem.top
       anchors.topMargin: 15
       onClicked: backButtonPressed()
     }
     MenuButton{
         anchors.top: parent.top
         anchors.left: parent.left
         anchors.topMargin: 20
         anchors.leftMargin: 10
         width: 20
         height: 20
         Image {
             id: mute
             anchors.fill: parent
             source: "../scenes/assets/StopMusic.png"
         }
     }
}
