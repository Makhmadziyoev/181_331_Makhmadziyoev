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

            Text {
                id: txt444
                //anchors.verticalCenter: parent.verticalCenter
                //anchors.horizontalCenter: parent.horizontalCenter
                anchors.right: txt444.left
                font.pointSize: 35
                font.family: "Dupe"
                //font.italic: true
                font.bold: true
                color: "#ff8c00"
                text: "Предппросмотр"
                anchors.top:parent.top

            }
            RoundButton{
                id: but1
            text: "←" //"Назад"
            anchors.left: txt444.right
            onClicked: swipeView.currentIndex = 2
            }

            gradient: Gradient {
                GradientStop { position: 0.0; color: "#1e90ff" }
                GradientStop { position: 0.25; color: "#1e90ff" }
                GradientStop { position: 0.5; color: "#1e90ff" }
                GradientStop { position: 0.75; color: "#1e90ff" }
                GradientStop { position: 1.0; color: "#1e90ff" }
            }
        }
    }

GridLayout{

RoundButton{
    id: rdb
text: "Обновить"
onClicked: webv.reload();
background: Rectangle {
    color: rdb.down ? "#0000ff":"#0000ff"
    radius: 10
}
contentItem: Text {
    text: rdb.text
    font: rdb.font
    color: rdb.down ? "green" : "white"
}
}
WebView{
    id: webv
    url: pathToFile
}

}


}
