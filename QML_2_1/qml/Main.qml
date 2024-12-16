import Felgo
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
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

                Text {

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
                Repeater {
                            model: 3
                            Rectangle {
                                color: "#c0c0c0"
                                width: parent.width / 3
                                height: parent.height/3

                                Text {
                                    text: index + 1
                                    font.pointSize: 16
                                    anchors.centerIn: parent
                                }
                            }
                        }
            }
        }

}
