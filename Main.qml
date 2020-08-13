import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1
import QtQuick.Dialogs 1.3
import test 1.1

ApplicationWindow {

    visible: true
    width: 640
    height: 480
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
                //onClicked: fileOpenDialog.open()
            }
        }
    }

    NetObject {
        id: test
        Component.onCompleted: function() {
            test.method()
        }
    }

}
