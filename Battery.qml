import QtQuick 2.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Timeline 1.0

Item {
    id: battery_gui
    width: 400
    height: 400

    property alias displayBatteryPercent: battery_number.text
    property alias batteryFrame: batteryTimeline.currentFrame

    Image {
        id: ellipse
        x: 0
        y: 0
        height: 400
        width: 400
        source: "assets/ellipse.png"
    }

    Image {
        id: battery_warning
        x: 304
        y: 164
        width: 50
        height: 50
        source: "assets/battery_warning.png"
    }

    Item {
        id: battery

        Image {
            id: battery_level
            x: 137
            y: 230
            width: 85
            height: 50
            source: "assets/battery_level.png"
        }

        Image {
            id: battery_image
            x: 131
            y: 205
            source: "assets/battery_2.png"
        }

        Text {
            id: battery_number
            x: 247
            y: 245
            font.pixelSize: 16
            text: "100"
            color: "#ffffff"
            font.weight: Font.Bold
            font.family: "Cherry"
        }

        Text {
            id: battery_percent
            x: 284
            y: 245
            font.pixelSize: 16
            text: "%"
            color: "#ffffff"
            font.weight: Font.Bold
            font.family: "Cherry"
        }

        Timeline {
            id: batteryTimeline
            animations: [
                TimelineAnimation {
                    id: timelineAnimation
                    property: "currentFrame"
                    loops: 1
                    duration: 1000
                    from: 0
                    to: 1000
                    running: false
                }
            ]
            enabled: true
            startFrame: 0
            endFrame: 200

            KeyframeGroup {
                target: item1
                property: "rotation"

                Keyframe {
                    frame: 0
                    value: -209.5
                }
            }
        }
    }

    Item {
        id: temperature

        Image {
            id: battery_temperature_warning
            width: 30
            height: 30
            x: 186
            y: 61
            source: "assets/battery_temperature.png"
        }

        Text {
            x: 117
            y: 107
            font.pixelSize: 16
            text: "C"
            color: "#ffffff"
            font.weight: Font.Bold
            font.family: "Exo 2"
            antialiasing: true
        }

        Text {
            x: 273
            y: 107
            font.pixelSize: 16
            text: "H"
            color: "#ffffff"
            font.weight: Font.Bold
            font.family: "Exo 2"
            antialiasing: true
        }

        CircularGauge {
            id: temperature_meter
            x: 89
            y: 43
            width: 224
            height: 207

            style: CircularGaugeStyle {
                minimumValueAngle: -70
                maximumValueAngle: 70

                tickmarkLabel: Text {
                    font.pixelSize: Math.max(6, outerRadius * 0.1)
                    //text: styleData.value
                    color: "#ffffff"
                    font.weight: Font.Bold
                    font.family: "Exo 2"
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
                    visible: style.value < 0
                }

                labelStepSize: 20
            }
        }
    }
}




/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:8}
}
##^##*/
