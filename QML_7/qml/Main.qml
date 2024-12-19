import Felgo
import QtQuick
import QtQuick.Controls
import QtQuick.Window

/*ApplicationWindow {
    visible: true
    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#ffffff" }
            GradientStop { position: 1; color: "#c1bbf9" }
        }
    }
    Slider {
        id: control
        anchors.centerIn: parent
        width: parent.width * 0.8
        height: parent.height * 0.3
        from: 0
        to: 100
        stepSize: 1
        value:50
        // Здесь кастомизируем поле ползунка
        background: Rectangle {
            x: control.leftPadding
            y: control.topPadding + control.availableHeight/ 2 - height / 2
            implicitWidth: 200
            implicitHeight: 4
            width: control.availableWidth
            height: implicitHeight
            radius: 2
            color: "#bdbebf"
            Rectangle {
                width: control.visualPosition * parent.width
                height: parent.height
                color: "#21be2b"
                radius: 2
            }
        }
        // Здесь кастомизируем сам ползунок
        handle: Rectangle {
            x: control.leftPadding + control.visualPosition * (control.availableWidth- width)
            y: control.topPadding + control.availableHeight/ 2 - height / 2
            implicitWidth: 26
            implicitHeight: 26
            radius: 13
            color: control.pressed ? "#bbbbbb" : "#f6f6f6"
            border.color: "#bdbebf"
        }
        // Здесь отображаем текущее значение
        Text {
            text: "Current Value: " + control.value.toFixed(0)
            anchors.top: control.bottom
            anchors.horizontalCenter: control.horizontalCenter
        }
    }
    TextArea {
        id: control1
        placeholderText: qsTr("Enter description")
        background: Rectangle {
            implicitWidth: 200
            implicitHeight: 40
            border.color: control.enabled ? "#21be2b" : "transparent"
        }
    }
}
*/


App {

    id: mainApp
    title: "Task for Login Page"
    width: 300
    height: 150

    Rectangle {
        anchors.fill: parent

        Column {
            spacing: 10
            anchors.centerIn: parent

            TextField {
                id: usernameInput
                placeholderText: "Username"
                width: parent.width
            }

            TextField {
                id: passwordInput
                placeholderText: "Password"
                echoMode: TextInput.Password
                width: parent.width
            }

            Row {
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter

                Button {
                    text: "Log In"

                }

                Button {
                    text: "Clear"
                    onClicked: {
                        usernameInput.text = ""
                        passwordInput.text = ""
                    }
                }
            }
        }
    }
}

