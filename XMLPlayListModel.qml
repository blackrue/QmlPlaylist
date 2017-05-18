import QtQuick 2.0
import QtQuick.XmlListModel 2.0
import QtQuick.Window 2.0

XmlListModel{
id: xmlModel
source:  "https://itunes.apple.com/us/rss/topsongs/limit=100/xml"
query: "/atom:feed/atom:entry"
namespaceDeclarations:  "declare namespace atom = 'http://www.w3.org/2005/Atom';
                                declare namespace im = 'http://itunes.apple.com/rss';"

XmlRole {name: "songTitle"; query:"atom:title/string()"}
XmlRole {name: "artist"; query:"im:artist/string()"}
XmlRole {name: "imagefile"; query:"im:image[@height='60']/string()"}
XmlRole {name: "audiofile"; query:"atom:link[@title='Preview']/@href/string()"}
onStatusChanged: {
if(status === XmlListModel.Loading)
    console.log("Loading")
if(status === XmlListModel.Ready)
    console.log("Ready " + source)
if(status === XmlListModel.Error)
    console.log("Error " + errorString())
}

}
