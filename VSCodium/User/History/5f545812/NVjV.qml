import QtQuick
import QtQuick.Layouts

Rectangle {
    id : root

    property string icon : ""
    property string label : ""
    property color iconColor : "#7fa7b5"
    property int maxLabelWidth : 400

    implicitWidth : row.implicitWidth + 22
    implicitHeight : 30
    radius : height / 2
    color : "#222e39"

    RowLayout {
        id : row
        anchors.centerIn : parent
        spacing : 7

        Text {
            text : root.icon
            color : root.iconColor
            font.family : "JetBrainsMono Nerd Font"
            font.pixelSize : 16
        }

        Text {
            text : root.label
            color : "#b8bac8"
            font.family : "JetBrainsMono Nerd Font"
            font.pixelSize  :16
            elide : Text.ElideRight
            Layout.maximumWidth : root.maxLabelWidth
            visible : root.label !== ""
        }
    }
}
