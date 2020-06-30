import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.0
import QtGraphicalEffects 1.14
import QtMultimedia 5.14

ApplicationWindow {
    visible: true

    width: 480
    height: 640
    title: qsTr("Tabs")


    signal writeFile(string text);


    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

//        Page1Form {
//        }

//        Page2Form {
//        }
        MyComponent {
        }
        Pageweb {
            id: pageweb
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

//        TabButton {
//            text: qsTr("Page 1")
//        }
//        TabButton {
//            text: qsTr("Page 2")
//        }
        TabButton {
            text: qsTr("Exam")
        }
        TabButton {
            text: qsTr("Web")
        }
    }

    Drawer{
        id: dr1
        width: parent.width * 0.67
        height: parent.height
        dragMargin: 20
        ColumnLayout{
            anchors.fill: parent

            Label{
            text: "Редактор HTML"
            anchors.horizontalCenter: parent.horizontalCenter
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
            text: "Экзаменационное задание по дисциплине "
            }
            Label {
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            text: "Разаработка безопасных "
            }
            Label {
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            text: " мобильный приложений "
            }
            Label {
                anchors.horizontalCenter: parent.horizontalCenter
            text: "Московский Политех, 30 июня 2020г"
            }
            Image { // !!!знак
                id: znak
                anchors.centerIn: parent
                source: "pol.png"
            }
            Label {
            text: "автор: ali.alister@mail.ru"
            }
            Label {
            //text: "https://github.com/Makhmadziyoev/181_331_Makhmadziyoev"
             text: "<a href=\"https://github.com/Makhmadziyoev/181_331_Makhmadziyoev\">
                       https://github.com/Makhmadziyoev/181_331_Makhmadziyoev</a>"
            wrapMode: Text.WordWrap
            }
        }
    }
}
