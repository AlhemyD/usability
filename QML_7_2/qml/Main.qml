import Felgo
import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts

Window {
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:parent.top
        id:text
        text: "Enter your password:"
        font.pixelSize: 16
        Layout.alignment: Qt.AlignCenter
    }
    Text{
        visible:false
        id:passwordField
        text:passwordField.text
        color:fon.color
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top:text.bottom
        id: passwordField1
        color: "white"
        border.width: 2
        border.color: "black"
        width: parent.width
        height: 50
        Layout.alignment: Qt.AlignCenter
        Row {
            spacing: 6
            anchors.centerIn: parent
            // Добавляем 6 элементов Label для отображения введенных символов
            Repeater {
                model:6
                Label {
                    width: 20
                    height: 20
                    font.pixelSize: 36
                    text: "*"
                    Layout.alignment: Qt.AlignCenter
                    color:index <passwordField.text.length ? "black" : "light grey"
                }
            }
        }
    }
    GridLayout {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: passwordField1.bottom
        anchors.topMargin: 15
        id: keypad
        rows: 4
        columns: 3
        width: parent.width*0.5

        Button {
            text: "1"
            onClicked: passwordField.text += "1"
        }
        Button {
            text: "2"
            onClicked: passwordField.text+= "2"
        }
        Button {
            text: "3"
            onClicked: passwordField.text += "3"
        }
        Button {
            text: "4"
            onClicked: passwordField.text+= "4"
        }
        Button {
            text: "5"
            onClicked: passwordField.text += "5"
        }
        Button {
            text: "6"
            onClicked: passwordField.text+= "6"
        }
        Button {
            text: "7"
            onClicked: passwordField.text += "7"
        }
        Button {
            text: "8"
            onClicked: passwordField.text+= "8"
        }
        Button {
            text: "9"
            onClicked: passwordField.text+= "9"
        }
        Button {
            text: " "
        }
        Button {
            text: "0"
            onClicked: passwordField.text+= "0"
        }
        Button {
            text: "Clear"
            onClicked: passwordField.text=""
        }
    }
    Button {
        anchors.top:keypad.bottom
        anchors.topMargin:25
        anchors.left: keypad.left
        text: "Log In"
    }

}
