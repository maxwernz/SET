import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: mainWindow
    width: 400
    height: 300
    visible: true

    Item {
        id: window
        width: Screen.width
        height: Screen.height



        Column {

            Image {
                id: img1
                fillMode: Image.Stretch
                source: "hs-mannheim.jpg"
                anchors.left: mainWindow.left
                anchors.top: mainWindow.top
                anchors.right: mainWindow.right
                anchors.margins: 10

            }

            Row {
                padding: mainWindow.width / 10
                spacing: 10
                MyButton {
                    id: button1
                    name: "Button 1"

                }
                MyButton {
                    id: button2
                    name: "Button 2"
                }
                MyButton {
                    id: button3
                    name: "Button 3"
                }
            }
        }
    }
}
