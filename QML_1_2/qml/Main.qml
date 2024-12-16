import Felgo
import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Task_for_Layout"


    Rectangle {
        id: header
        color: "#e0e0e0"
        height: parent.height * 0.1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

        Text {
            text: "Header"
            anchors.centerIn: parent
        }
    }


    Rectangle {
        id: content
        color: "#f5f5f5"
        anchors.top: header.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: footer.top

        Text {
            text: "Content"
            anchors.centerIn: parent
        }
    }


    Row {
        id: footer
        spacing: 1
        height: parent.height * 0.1
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right

        Repeater {
            model: 3
            Rectangle {
                color: "#c0c0c0"
                width: parent.width / 3
                height: parent.height

                Text {
                    text: index + 1
                    anchors.centerIn: parent
                }
            }
        }
    }
}

