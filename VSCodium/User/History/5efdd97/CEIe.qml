import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
    implicitWidth: row.implicitWidth + 22
    implicitHeight: 30
    radius: height / 2
    color: "#222e39"

    Row {
        id: row
        anchors.centerIn: parent
        spacing: 8

        Repeater {
            model: Hyprland.workspaces

            Item {
                width: 11
                height: 11

                Rectangle {
                    anchors.centerIn: parent
                    width: modelData.active ? 11 : 7
                    height: width
                    radius: width / 2

                    color: modelData.active ? "transparent" : "#7fa7b5"
                    border.width: modelData.active ? 2 : 0
                    border.color: "#7fa7b5"

                    Behavior on width {
                        NumberAnimation {
                            duration: 150
                            easing.type: Easing.OutCubic
                        }
                    }
                }
            }
        }
    }
}