import Felgo
import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Layouts

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")

    property int defMargin:10

    StackView{
        id:stack_view
        anchors.fill: parent
        initialItem: page1
    }
    My_Page {
        id:page1
        backgroundColor: "red"
        leftButtonText:"To_Yellow"
        rightButtonText: "To_Green"
        onLeftButtonClicked:{
            stack_view.push(page3)
        }
        onRightButtonClicked: {
            stack_view.push(page2)
        }
    }
    My_Page {
        id:page2
        visible: false
        backgroundColor: "green"
        leftButtonText:"To_Red"
        rightButtonText: "To_Yellow"
        onLeftButtonClicked:{
            stack_view.pop(page1)
        }
        onRightButtonClicked: {
            stack_view.push(page3)
        }
    }
    My_Page{
        id:page3
        visible:false
        backgroundColor:"yellow"
        leftButtonText:"To_Green"
        rightButtonText:"To_Red"
        onLeftButtonClicked:{
            stack_view.push(page2)
        }
        onRightButtonClicked:{
            stack_view.pop(page1)
        }
    }
}
