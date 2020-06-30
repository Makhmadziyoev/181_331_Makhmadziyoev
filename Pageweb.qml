import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.14
import QtMultimedia 5.14
import QtWebView 1.14

Page{
    id: pageweb
    header:
        ToolBar{
        anchors.top: parent.top
        background: Rectangle{
            implicitHeight: 50
            width: parent.width
            color:  "#1588b5"

            Text {
                id: txt444
                anchors.horizontalCenter: parent.horizontalCenter
                //anchors.verticalCenter: parent.verticalCenter
                //anchors.horizontalCenter: parent.horizontalCenter
                anchors.right: txt444.left
                font.pointSize: 25
                font.family: "Dupe"
                //font.italic: true
                font.bold: true
                color: "#FFFFFF"
                text: "Предпросмотр"
                anchors.top:parent.top

            }
            RoundButton{
                id: but1
            text: "←" //"Назад"
            anchors.left: txt444.right
            font.bold: true
            flat: true
//            background: Rectangle {
//                color: but1.down ? "#0000ff":"#0000ff"
//                radius: 10
//            }
//            contentItem: Text {
//                text: but1.text
//                font: but1.font
//                color: but1.down ? "green" : "white"
//            }
            onClicked: swipeView.currentIndex = 0
            }


            RoundButton{
                id: rdb
            text: "Обновить"
            anchors.right: txt444.left
            onClicked: webv.reload();
            flat: true
//            background: Rectangle {
//                color: rdb.down ? "#0000ff":"#0000ff"
//                radius: 10
//            }
//            contentItem: Text {
//                text: rdb.text
//                font: rdb.font
//                color: rdb.down ? "green" : "white"
//            }
            }


        }
    }

GridLayout{
    anchors.fill: parent
    columns: 3
    rows: 3


WebView{
    id: webv
    url: pathToFile
    visible:  true
    width: parent.width
    height: parent.height*0.7
}

}


}
