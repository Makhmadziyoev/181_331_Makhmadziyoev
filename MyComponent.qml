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


//            MouseArea {
//               onClicked: dr1.open();
//            Label {
//            text: " ░ "
//            font.pointSize: 25
//            anchors.left:parent.left

//            }
//}

            Button{
                text: " ░ "
                id:hmd
                flat: true
                font.pointSize: 20
                anchors.left:parent.left
                onClicked: dr1.open();

            }


            Text {
                id: txt4
                //anchors.verticalCenter: parent.verticalCenter
                //anchors.horizontalCenter: parent.horizontalCenter
                anchors.right: txt44.left
                font.pointSize: 25
                font.family: "Dupe"
                //font.italic: true
                font.bold: true
                color: "#ff8c00"
                text: "Заголовок"
                anchors.top:parent.top
                anchors.horizontalCenter: parent.horizontalCenter
            }
//            RoundButton{
//                id: but1
//            text:  "1"
//            anchors.left: txt4.right
//            onClicked: swipeView.currentIndex = 0
//            }
//            RoundButton {
//            text: "2"
//            anchors.left: but1.right
//            onClicked: swipeView.currentIndex = 2
//            }
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

        RoundButton {
        text:  "💾" //сохранить
        onClicked: writeFile(txt1.text);

        }



        RoundButton {
        text: "📰" //предпросмотр
        onClicked: {swipeView.currentIndex = 1;
                   writeFile(txt1.text);
                   //webv.reload("https://vk.com");
        }
        }


        ComboBox{

        }
        CheckBox{
            id: chb
        text: "Wrap"
        onClicked: TextEdit.NoWrap
        //wrapMode: chb.checkState === Qt.Checked ? TextArea.Wrap : TextArea.NoWrap
        //chb.down: TextEdit.NoWrap
        }

        Rectangle {
            Layout.preferredWidth: 480
            Layout.preferredHeight: 380
            Layout.row: 2
            Layout.column: 0
            Layout.columnSpan: 3

//            ScrollBar {
//            clip: true
//            Layout.leftMargin: 300
            ScrollView {
                anchors.fill: parent
            TextArea{
                id: txt1
                anchors.fill: parent
                //Layout.fillWidth: true
                wrapMode: TextEdit.Wrap
    //            Layout.preferWidth: 380
    //            Layout.preferHeight: 50
    //            width: 380
    //            height: 10




          }

            }
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
