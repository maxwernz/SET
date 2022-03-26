import QtQuick

Rectangle{
    id: button
    height: 50
    width: 100
    radius: 25
    color: "yellow"
    state: "disabled"
    property string name: "Button"


    MouseArea {
        anchors.fill: parent
        onClicked: (button.state === "on") ? (button.state = "off") : (button.state = "on")
    }

    states: [
        State {
            name: "on"
            PropertyChanges { target: button; color: "red"}
        },
        State {
            name: "off"
            PropertyChanges { target: button; color: "blue"}
        },
        State {
            name: "disabled"
            PropertyChanges {target: button; color: "grey" }
        }


    ]


    Text {
        id: buttonText
        anchors.centerIn: parent
        text: qsTr(parent.name)
    }
}
