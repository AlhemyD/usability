import Felgo
import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Page{
    header:ToolBar{
        id:page_header
        height:40
        visible:stack_view.depth>1
        RowLayout{
            ToolButton{
                id:back_btn
                Text{
                    text: "<-"
                    font.pixelSize: 24
                    visible:stack_view.depth>1
                    anchors.verticalCenter: parent.verticalCenter
                }
                onClicked: {
                    stack_view.pop()
                }
            }
            Text{
                id:header_page_text
                anchors.centerIn: page_header
            }
        }
    }
    id:root
    property alias backgroundColor:back_fon.color
    property alias rightButtonText:batton_nav.text
    property alias leftButtonText:batton_nav_left.text
    signal rightButtonClicked();
    signal leftButtonClicked();
    background: Rectangle{
        id:back_fon
    }

    Button {
        id:batton_nav_left
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: {
            root.leftButtonClicked()
        }
    }
    Button {
        id:batton_nav
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: defMargin
        onClicked: {
            root.rightButtonClicked()
        }
    }
}
