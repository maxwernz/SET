import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
    id: mainWindow
    width: 400
    height: 300
    visible: true

    ColumnLayout {
        anchors.fill: parent
        Image {
            id: img
            source: "hs-mannheim.jpg"
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignTop
        }

        Row {
            Layout.alignment: Qt.AlignHCenter
            Layout.bottomMargin: mainWindow.height / 4
            spacing: 5
            MyButton {
                id: button1
                name: "Button 1"
                onClicked: console.log(name + " clicked " + state)
            }
            MyButton {
                id: button2
                name: "Button 2"
                onClicked: console.log (name + " clicked " + state)
            }
            MyButton {
                id: button3
                name: "Button 3"
                onClicked: console.log (name + " clicked " + state)
            }
        }
    }

}
