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
            color:  "#1588b5"

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
                color: "#FFFFFF"
                text: "Заголовок"
                anchors.top:parent.top
                anchors.horizontalCenter: parent.horizontalCenter
            }

        }
    }


    GridLayout {
        anchors.fill: parent
        columns: 4
        rows: 3

        RoundButton {
            Material.background: "#3dd283"
            Layout.column: 0
            Layout.row: 0
        text:  "💾" //сохранить
        onClicked: writeFile(txt1.text);
        }

        RoundButton {
        text: "📰" //предпросмотр
        Material.background: "#3dd283"
        Layout.row: 0
        Layout.column: 2
        onClicked: {swipeView.currentIndex = 1;
                   writeFile(txt1.text);
                   //webv.reload("https://vk.com");
        }
        }

        RoundButton {
        id: mn_btn
        Material.background: "#3dd283"
        Layout.row: 0
        Layout.column: 3
        text: "↔"
        //icon.source: "qrc:/Media/Icons/plus.png"
        //icon.color: mn_btn.pressed ? "#9ca2b0":"#15888b5"

        anchors.left: prv_btn.right
        onClicked:addmn.open()
        Menu{
        id: addmn

        MenuItem {
        text: "h1"
        onClicked: txt1.insert(txt1.cursorPosition,"<h1></h1>")


        }
        MenuItem {
        text: "h2"
        onClicked: txt1.insert(txt1.cursorPosition,"<h2></h2>")


        }
        MenuItem {
        text: "div"
        onClicked: txt1.insert(txt1.cursorPosition,"<div></div>")


        }
        MenuItem {
        text: "img"
        onClicked: txt1.insert(txt1.cursorPosition,"<img src=\"\" alt=\"\">")


        }
        MenuItem {
        text: "img"
        onClicked: txt1.insert(txt1.cursorPosition,"<a> </a>")


        }
        }


        }

        RoundButton {
            Layout.row: 0
            Layout.column: 1
            Material.background: "#3dd283"
            Material.foreground: "#FFFFFF"
            id: chb2
            text: "Wrap"
            onClicked: txt1.wrapMode=TextArea.WrapAnywhere
        }


        Rectangle {
            Layout.preferredWidth: 480
            Layout.preferredHeight: 380
            Layout.row: 2
            Layout.column: 0
            Layout.columnSpan: 4


            ScrollView {
                anchors.fill: parent


            TextArea{
                id: txt1

                Layout.fillWidth: true

                wrapMode: {if(chb.checked){TextArea.WrapAnywhere}else{TextArea.NoWrap}}





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
