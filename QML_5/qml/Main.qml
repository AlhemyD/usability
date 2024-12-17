import Felgo
import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: mainApp
    title: "Task for Layout"
    property string currentState: "default"

    width: 500; height: 600; visible: true
    maximumHeight: 600
    maximumWidth: 500
    minimumHeight: 600
    minimumWidth: 500


        Column {
            spacing: 10
            height:parent.height
            width:parent.width
            // Шапка
            Rectangle {
                id:header
                width: parent.width
                height: parent.height*0.1
                color: "lightgray"
                Text {
                    id:header_text
                    anchors.centerIn: parent
                    text: currentState === "default" ? "Header" : "Header "+currentState
                    font.pointSize: 16

                }
                // Кнопка "Назад"
                Button {
                    id: backButton
                    visible: currentState !== "default"
                    text: "<- Назад"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.margins: 10
                    onClicked: currentState = "default"
                    Behavior on visible{
                        NumberAnimation {
                            duration: 300
                            easing.type: Easing.InOutQuad
                        }
                    }
                }
            }

            // Центральное содержимое
            Rectangle {
                width: parent.width
                height: parent.height*0.7
                color: "#f0f0f0"
                id:content
                Text {
                    id:content_text
                    text: currentState === "default" ? "Some content" : currentState + " content"
                    anchors.centerIn: parent
                    font.pointSize: 24
                }
            }

            // Нижний контейнер с кнопками
            Row {
                id:footer
                spacing: 1
                height:parent.height*0.5
                width:parent.width
                Rectangle {
                    id:rect1
                    color: "#c0c0c0"
                    width: parent.width / 3
                    height: parent.height/3
                    opacity: currentState==="default" ? 1 : currentState === "Item 1" ? 1 : 0.5
                    Text {
                        id:rect1_text
                        text: "item 1"
                        font.pointSize: 16
                        anchors.centerIn: parent
                    }
                    MouseArea {
                        id:mouse1
                        hoverEnabled: true
                        anchors.fill: rect1
                        onPressed: {
                            currentState="Item 1"
                        }
                        onEntered: rect1.color="darkgray"
                        onExited: rect1.color="#c0c0c0"
                    }
                    Behavior on color{
                        ColorAnimation {
                            duration: 400
                            easing.type: Easing.InOutQuad
                        }
                    }
                    Behavior on opacity{
                        NumberAnimation{
                            duration:400
                            easing.type:Easing.InOutQuad
                        }
                    }
                }
                Rectangle {
                    id:rect2
                    color: "#c0c0c0"
                    width: parent.width / 3
                    height: parent.height/3
                    opacity: currentState==="default" ? 1 : currentState === "Item 2" ? 1 : 0.5
                    Text {
                        id:rect2_text
                        text: "item 2"
                        font.pointSize: 16
                        anchors.centerIn: parent
                    }
                    MouseArea {
                        id:mouse2
                        hoverEnabled: true
                        anchors.fill: rect2
                        onPressed: {
                            currentState="Item 2"
                        }
                        onEntered: rect2.color="darkgray"
                        onExited: rect2.color="#c0c0c0"
                    }
                    Behavior on color{
                        ColorAnimation {
                            duration: 400
                            easing.type: Easing.InOutQuad
                        }
                    }
                    Behavior on opacity{
                        NumberAnimation{
                            duration:400
                            easing.type:Easing.InOutQuad
                        }
                    }
                }
                Rectangle {
                    id:rect3
                    color: "#c0c0c0"
                    width: parent.width / 3
                    height: parent.height/3
                    opacity: currentState==="default" ? 1 : currentState === "Item 3" ? 1 : 0.5
                    Text {
                        id:rect3_text
                        text: "item 3"
                        font.pointSize: 16
                        anchors.centerIn: parent
                    }
                    MouseArea {
                        id:mouse3
                        hoverEnabled: true
                        anchors.fill: rect3
                        onPressed: {
                            currentState="Item 3"
                        }
                        onEntered: rect3.color="darkgray"
                        onExited: rect3.color="#c0c0c0"
                    }
                    Behavior on color{
                        ColorAnimation {
                            duration: 400
                            easing.type: Easing.InOutQuad
                        }
                    }
                    Behavior on opacity{
                        NumberAnimation{
                            duration:400
                            easing.type:Easing.InOutQuad
                        }
                    }
                }

            }
        }

}
