import QtQuick 2.0
import QtQuick.Window 2.0
import QtMultimedia 5.0
Item {

    id: playlistItem
    width: Screen.width / 2
    height: Screen.height / 8
    property int leftMarginValue: 10
    property int topMarginValue: 10
    Rectangle {
        id: playListLineObj
        y: 0
        width: Screen.width
        height: 120
        anchors.leftMargin: 0
        anchors.left: parent.left
        border.color: 'black'
        gradient: Gradient{
            GradientStop {position: 0.0; color: "white"}
            GradientStop {position: 1.0; color: "grey"}
        }

        MouseArea {
            id: mouseArea
            x: 250
            y: -8
            width: 100
            height: 100
            anchors.fill: parent
            onClicked: {
                console.log(artistText.text + " "  + previewSong.source)
                //previewSong.play()
                audioPlayer.playFile(previewSong.source)
            }
        }
        Rectangle {
            id: imageWidgetFrame
            anchors.top: parent.top
            anchors.topMargin: topMarginValue
            anchors.left: parent.left
            anchors.leftMargin: leftMarginValue
            width: 70
            height: 73
            radius: 5
            border.width: 8
            Image {
                id: imageWidget
                source:imagefile

                anchors.centerIn: parent
                width: 60
                height: 60


            }
        }

        Text {
            id: artistText
            anchors.left:  imageWidgetFrame.right
            anchors.leftMargin: leftMarginValue
            anchors.top: imageWidgetFrame.top
            width: Screen.width/8
            height: 25
            text:  artist

        }
        Text {
            id: titleText
            anchors.left:  imageWidgetFrame.right
            anchors.top: artistText.bottom
            width: Screen.width/8
            height: 25
            // May want to print to data to console log
            text:  songTitle
            anchors.leftMargin: 70

        }
        Audio {
            id: previewSong
            source: audiofile
            onStatusChanged: {
                if(status === Audio.Loading)
                    console.log("Loading")
                if(status === Audio.Loaded)
                    console.log("Loaded " + source)
                if(status === Audio.Stalled)
                    console.log("Error " + errorString())
            }
        }
    }
}
