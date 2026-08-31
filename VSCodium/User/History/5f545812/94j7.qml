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
}
