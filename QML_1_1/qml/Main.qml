import Felgo
import QtQuick

Window {
    visible: true
    width: 400
    height: 400
    title: "Rectangle Figure Example"

    // Основание дома
    Rectangle {
        id: base
        width: 150
        height: 150
        color: "lightblue"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 40


        // Окно 1
        Rectangle {
            id: window1
            width: 40
            height: 40
            color: "yellow"
            anchors.bottom: base.bottom
            anchors.left: base.left
            anchors.leftMargin: 20
            anchors.bottomMargin: 40
        }

        // Окно 2
        Rectangle {
            id: window2
            width: 40
            height: 40
            color: "yellow"
            anchors.bottom: base.bottom
            anchors.right: base.right
            anchors.rightMargin: 20
            anchors.bottomMargin: 40
        }
        // Дверь
        Rectangle {
            id: door
            width: 40
            height: 70
            color: "brown"
            anchors.bottom: base.bottom
            anchors.horizontalCenter: base.horizontalCenter
            anchors.bottomMargin: 20
        }
    }

    // Крыша
    Canvas {
        id: roof
        width: 150
        height: 75
        anchors.bottom: base.top
        anchors.horizontalCenter: base.horizontalCenter

        onPaint: {
            var ctx = roof.getContext("2d");
            ctx.clearRect(0, 0, roof.width, roof.height);
            ctx.fillStyle = "darkred";
            ctx.beginPath();
            ctx.moveTo(0, 75);
            ctx.lineTo(75, 0);
            ctx.lineTo(150, 75);
            ctx.closePath();
            ctx.fill();
        }
    }
}

