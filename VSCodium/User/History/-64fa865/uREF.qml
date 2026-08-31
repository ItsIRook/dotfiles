import Quickshell
import QtQuick

ShellRoot {
    PanelWindow {
        id : bar

        anchors {
            top : true
            left : true
            right : true
        }

        implicitHeight : 30
        color : "transparent"

        Text {
            anchors.centerIn : parent
            text : Qt.formatDateTime(clock.date, "hh:mm")
        }

        SystemClock {
            id : clock
            precision : SystemClock.Minutes
        }
    }
}