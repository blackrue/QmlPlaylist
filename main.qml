import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtQuick.XmlListModel 2.0
import QtQuick.Window 2.0


ApplicationWindow {
    visible: true
    width: Screen.width/2
    height: Screen.height/2



        ListView{
        id: playlistListView
        width: Screen.width/2
        height: Screen.height/2
        model: top100Model
        delegate:  PlayListDelegate{}
        spacing: 10
        header:  Header{
            playlistName: "Top 100"}

        }

        XMLPlayListModel{
        id: top100Model
        }
}
