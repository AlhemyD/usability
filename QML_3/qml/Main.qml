import Felgo
import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

/*Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Anchors")
    color: "light grey"
    Rectangle {
        id:btn
        anchors.centerIn: parent
        width:200
        height:100
        color: mouse.containsMouse ? "red": "orange"
        MouseArea {
            id:mouse
            hoverEnabled: true
            anchors.fill: btn
            onPressed: {btn.width+=20;btn.height+=20; btn.color="darkred"}
            onReleased: {btn.width-=20; btn.height-=20; btn.color="red"}
            onEntered: btn.color="red"
            onExited: btn.color="orange"
        }
    }

}*/

ApplicationWindow {
    id: mainApp
    title: "Task for Layout"

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
                    text: "Header"
                    font.pointSize: 16
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
                    text: "Content"
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
                            header_text.text="Header 1"
                            content_text.text="item 1 content"
                            rect2.opacity=0.5
                            rect3.opacity=0.5
                        }
                        onReleased: {
                            rect2.opacity=1
                            rect3.opacity=1
                        }
                        onEntered: rect1.color="darkgray"
                        onExited: rect1.color="#c0c0c0"
                    }
                }
                Rectangle {
                    id:rect2
                    color: "#c0c0c0"
                    width: parent.width / 3
                    height: parent.height/3

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
                            header_text.text="Header 2"
                            content_text.text="item 2 content"
                            rect1.opacity=0.5
                            rect3.opacity=0.5
                        }
                        onReleased: {
                            rect1.opacity=1
                            rect3.opacity=1
                        }
                        onEntered: rect2.color="darkgray"
                        onExited: rect2.color="#c0c0c0"
                    }
                }
                Rectangle {
                    id:rect3
                    color: "#c0c0c0"
                    width: parent.width / 3
                    height: parent.height/3

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
                            header_text.text="Header 3"
                            content_text.text="item 3 content"
                            rect2.opacity=0.5
                            rect1.opacity=0.5
                        }
                        onReleased: {
                            rect2.opacity=1
                            rect1.opacity=1
                        }
                        onEntered: rect3.color="darkgray"
                        onExited: rect3.color="#c0c0c0"
                    }
                }

            }
        }

}
