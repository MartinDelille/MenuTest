import QtQuick
import QtQuick.Controls
import Qt.labs.platform as Labs

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("MenuTest")

    Labs.MenuBar {
        Labs.Menu {
            title: qsTr("&Navigation")

            Labs.MenuItem {
                text: qsTr("Previous Frame")
                shortcut: StandardKey.Back
                onTriggered: {
                    console.log("previous frame");
                }
            }

            Labs.MenuItem {
                text: qsTr("Next Frame")
                shortcut: StandardKey.Forward
                onTriggered: {
                    console.log("next frame");
                }
            }

            Labs.MenuItem {
                text: qsTr("Jump 10 seconds backward")
                shortcut: "Shift+Left"
                onTriggered: {
                    console.log("-10");
                }
            }
            
            Labs.MenuItem {
                text: qsTr("Jump 10 seconds forward")
                shortcut: "Shift+Right"
                onTriggered: {
                    console.log("+10");
                }
            }
        }
    }
}
