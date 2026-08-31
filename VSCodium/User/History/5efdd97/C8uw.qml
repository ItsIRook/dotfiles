import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Repeater {
    model: 5

    Item {
        width: 11
        height: 11

        Rectangle {
            anchors.centerIn: parent

            width: Hyprland.focusedWorkspace &&
                   Hyprland.focusedWorkspace.id === index + 1 ? 11 : 5

            height: width
            radius: width / 2

            color: "transparent"

            border.width: Hyprland.focusedWorkspace &&
                           Hyprland.focusedWorkspace.id === index + 1 ? 2 : 0

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