import QtQuick 2.12
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: speed_dial

    width: 600
    height: 600

    Image {
        id: speed_dial_background
        width: 600
        height:600
        source: "assets/ellipse.png"
    }

    Image {
        id: speed_display_background
        x: 200
        y: 374
        width: 200
        height: 100
        source: "assets/rectangle.png"
    }

    Item {
        id: speed_display

        Text {
            id: mph_number
            x: 198
            y: 399
            width: 160
            height: 70
            color: "#FFFFFF"
            text: "0"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignHCenter
            rotation: 0
            font.weight: Font.Bold
            font.pixelSize: 40
            font.family: "Cherry"
        }

        Text {
            id: mph_text
            x: 292
            y: 409
            width: 100
            height: 50
            color: "#FFFFFF"
            text: "mph"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignHCenter
            font.weight: Font.Bold
            font.pixelSize: 20
            font.family: "Cherry"
        }


    }

    CircularGauge {
        id: speed_gauge
        width: 600
        height: 600
        anchors.fill: parent

        style: CircularGaugeStyle {
            tickmarkLabel:  Text {
                font.pixelSize: Math.max(6, outerRadius * 0.1)
                text: styleData.value
                font.weight: Font.Bold
                font.family: "Exo 2"
                color: "#ffffff"
                antialiasing: true
            }

            tickmark: Rectangle {
                visible: styleData.value < 80 || styleData.value % 10 == 0
                implicitWidth: outerRadius * 0.03
                antialiasing: true
                implicitHeight: outerRadius * 0.08
                color: "#ffffff"
            }

            minorTickmark: Rectangle {
                visible: styleData.value
                implicitWidth: outerRadius * 0.01
                antialiasing: true
                implicitHeight: outerRadius * 0.04
                color: "#ffffff"
            }
        }

        value: accelerating ? maximumValue : 0
        anchors.centerIn: parent

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
