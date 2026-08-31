import Quickshell
import QtQuick

PanelWindow {
    id : bar

    anchors {
    top : true
    left : true
    right : true
    }

    implicitHeight : 30
    color : "transparent"

    Pill {
        anchros.centerIn : parent
        icon : "󰥔"
    }
}