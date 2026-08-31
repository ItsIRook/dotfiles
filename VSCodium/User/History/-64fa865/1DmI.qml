import Quickshell
import QtQuick

ShellRoot {
    PanelWindow {
        anchors {
            top : true
            left : true
            right : true
        }
        implicitHeight : 30

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