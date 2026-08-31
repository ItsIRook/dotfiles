import Quickshell
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

Rectangle {
    implicitWidth : row.implicitWidth + 22
    implicitHeight : 33
    radius : height/2
    color : "#222e39"

    RowLayout {
        id : row
        anchors.centerIn : parent
        spacing : 8

        Repeater {
            model : Hyprland.workspaces
            
            Rectangle {
                implicitWidth : modelData.active ? 11 : 0
                implicitHeight : implicitWidth
                radius : width/2
                color : modelData.active ? "transparent" : "#9db99a"
            }
        }
    }
}