import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.1
import test 1.1

ApplicationWindow {

                  visible: true
                  width: 640
                  height: 480
                  title: "Kernai QML .net"

                  Material.theme: Material.Light
                  Material.accent: '#41cd52'
                  Material.primary: '#41cd52'

                  NetObject {
                  id: test
                  Component.onCompleted: function() {
                                         test.method()
                                         }
                                         }
                                                   
}