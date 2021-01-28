import QtQuick 2.0
import QtQuick.Extras 1.4

Rectangle{
    color: "black"

    CircularGauge {
        id: gauge2
        maximumValue: 70
        value: 25
        anchors.centerIn: parent
    }

}
