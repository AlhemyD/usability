import Felgo
import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts

/*App {
    ListModel{
        id:my_model
        ListElement{ name:"Ivan"; surname:"Petrov";phone:"11-11-11"}
        ListElement{ name:"Petr"; surname:"Ivanov";phone:"22-22-22"}
        ListElement{ name:"Pavel"; surname:"Sidorov";phone:"33-33-33"}
    }
    Component{
        id:my_delegate
        MyDelegate{
            name:model.name
            surname:model.surname
            phoneNumber: model.phone

            width:parent.width
            height:40
        }
    }
    ListView {
        id:my_list
        anchors.fill:parent
        model:my_model
        delegate:my_delegate
    }
}*/
Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Task_for_ListView_Model")
    property int defMargin: 8
    ListModel{
        id:my_model
    }

    Page{
        id:page
        anchors.fill:parent
        Component{
            id:my_delegate
            MyDelegate{
                name:model.name
                time:model.time

                width:parent.width
                height:40
            }
        }
        ListView {
            id:my_list
            anchors.fill:parent
            model:my_model
            delegate:my_delegate
        }
        footer: PageFooter {
            onNewMessage: {
                var newMsg = {};
                newMsg.name = msg;
                newMsg.time = Qt.formatTime(new Date(), "hh:mm");
                my_model.append(newMsg);
            }
        }
    }

}
