import QtQuick

Rectangle{
    id: button
    height: 50
    width: 100
    color: "yellow"

    Text {
        id: buttonText
        anchors.centerIn: parent
        text: qsTr("Hallo SET")
    }
}
