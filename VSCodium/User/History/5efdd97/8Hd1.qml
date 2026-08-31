import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
    implicitWidth: (Hyprland.workspaces.length * 11) +
                   ((Hyprland.workspaces.length - 1) * 8) + 22
    implicitHeight: 30
    radius: height / 2
    color: "#222e39"

    RowLayout {
        id: row
        anchors.centerIn: parent
        spacing: 8

        Repeater {
            model: Hyprland.workspaces

            Rectangle {
                implicitWidth: modelData.active ? 11 : 0
                implicitHeight: 11
                radius: width / 2

                color: modelData.active ? "transparent" : "#7fa7b5"
                border.width: modelData.active ? 2 : 0
                border.color: "#7fa7b5"

                Behavior on implicitWidth {
                    NumberAnimation {
                        duration: 150
                        easing.type: Easing.OutCubic
                    }
                }
            }
        }
    }
}