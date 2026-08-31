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

                    Behavior on border.width {
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