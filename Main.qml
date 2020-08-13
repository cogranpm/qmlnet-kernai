import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1
import QtQuick.Dialogs 1.3
import QtQuick.Window 2.2
import test 1.1

ApplicationWindow {

    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight
    title: "Kernai running on QML.net"

    Material.theme: Material.Light
    Material.accent: '#41cd52'
    Material.primary: '#41cd52'

    header: ToolBar {
        Flow {
            anchors.fill: parent
            ToolButton {
                text: qsTr("Open")
                icon.name: "document-open"
                onClicked: fileDialog.open()
            }
        }
    }

    FileDialog{
           id: fileDialog;
           title: "Please choose a file";
           nameFilters: ["Image Files (*.jpg *.png *.gif)"];
           selectFolder:false
           visible: false
           onAccepted: {
               console.log("User has selected " + fileDialog.fileUrl);
               fileDialog.close()
           }
       }

    NetObject {
        id: test
        Component.onCompleted: function() {
            test.method()
        }
    }

}
