import Felgo
import QtQuick
import QtQuick.Controls

App {

    SwipeView{
        interactive: SwipeView.ForceElasticity
        id: view
        currentIndex: 1
        anchors.fill: parent
        Page {
            id:firstPage
            background: Rectangle{
                id:back_fon
                color:"red"
            }
        }
        Page {
            id: secondPage
            background: Rectangle{
                id:back_fon2
                color:"yellow"
            }
        }
        Page {
            id: thirdPage
            background: Rectangle{
                id:back_fon3
                color:"green"
            }
        }
    }
    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
