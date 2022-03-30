import QtQuick

Rectangle{
    id: button
    height: 50
    width: 100
    radius: 25
    state: "disabled"
    property string name: "Button"
    signal clicked(string newState)
    onClicked: button.state = newState

    Behavior on scale {
        NumberAnimation { duration: 200 }
    }


    MouseArea {
        anchors.fill: parent
        onClicked: (button.state === "on") ? button.clicked("off") : button.clicked("on");
    }

    states: [
        State {
            name: "on"
            PropertyChanges { target: button; color: "red";}
        },
        State {
            name: "off"
            PropertyChanges { target: button; color: "blue"; scale: 0.9}
        },
        State {
            name: "disabled"
            PropertyChanges {target: button; color: "grey"; scale: 0.9}
        }
    ]

    Text {
        id: buttonText
        anchors.centerIn: parent
        text: qsTr(parent.name)
    }
}
