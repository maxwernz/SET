import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: mainWindow
    width: 400
    height: 300
    visible: true

    Column {
        Image {
            id: img1
            source: "qrc:/hs-mannheim.jpg"
        }
        Row {
            PaddedRectangle { width: 100; height: 50; radius: 25; color: "blue"}
            Rectangle { width: 100; height: 50; radius: 25; color: "blue"}
            Rectangle { width: 100; height: 50; radius: 25; color: "blue"}
            Rectangle { width: 100; height: 50; radius: 25; color: "blue"}
        }
    }

}
