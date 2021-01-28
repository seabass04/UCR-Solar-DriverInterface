import QtQuick 2.0
import QtQuick.Extras 1.4

Rectangle{
    color: "black"

    CircularGauge {
        id: velocity
        value: accelerating ? maximumValue : 0
        anchors.centerIn: parent
        maximumValue: 70
        //background:

        property bool accelerating: false

        Keys.onSpacePressed: accelerating = true
        Keys.onReleased: {
            if (event.key === Qt.Key_Space) {
                accelerating = false;
                event.accepted = true;
            }
        }

        Component.onCompleted: forceActiveFocus()

        Behavior on value {
            NumberAnimation {
                duration: 1000
            }
        }
    }

}
