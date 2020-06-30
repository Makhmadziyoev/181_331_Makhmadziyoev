import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.14
import QtMultimedia 5.14
import QtWebView 1.14

Page {
    id: pageex
    header:
        ToolBar{
        anchors.top: parent.top
        background: Rectangle{
            implicitHeight: 50
            width: parent.width

            Text {
                id: txt4
                //anchors.verticalCenter: parent.verticalCenter
                //anchors.horizontalCenter: parent.horizontalCenter
                anchors.right: txt44.left
                font.pointSize: 35
                font.family: "Dupe"
                //font.italic: true
                font.bold: true
                color: "#ff8c00"
                text: "Заголовок"
                anchors.top:parent.top

            }
            Button{
                id: but1
            text:  "1"
            anchors.left: txt4.right
            onClicked: swipeView.currentIndex = 0
            }
            Button {
            text: "2"
            anchors.left: but1.right
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


    GridLayout {
        anchors.fill: parent
        columns: 3
        rows: 3

        Button {
        text:  "сохранить"
        }

        TextArea{
            Layout.row: 2
            Layout.column: 0
            Layout.columnSpan: 3
            Layout.fillWidth: true

        }

        Button {
        text: "Предпросмотр"
        }
        ComboBox{}
        CheckBox{
        text: "Wrap"
        }
    }




//TextField{}

//Button{
//text: "Вызов"
//}
//Button{
//text: "Сохранить"
//}
//Button{
//text: "Предпросмотр"
//}

}
