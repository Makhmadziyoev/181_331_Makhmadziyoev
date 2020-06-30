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

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
        }

        Page2Form {
        }
        MyComponent {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
        TabButton {
            text: qsTr("Exam")
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
            }
            Label {
            text: "Экзаменационное задание по дисциплине "
            }
            Label {
            text: "Разаработка безопасных мобильный приложений "
            }
            Label {
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
            text: "https://github.com/Makhmadziyoev/181_331_Makhmadziyoev"
            wrapMode: Text.WordWrap
            }
        }
    }
}
