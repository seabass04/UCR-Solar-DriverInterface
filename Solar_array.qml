import QtQuick 2.12
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Timeline 1.0

Item {
    id: solar_array
    width: 400
    height: 400

    property alias displayInputPower: input_power.text
    property alias displayOutputPower: output_power.text

    Image {
        id: ellipse
        x: 0
        y: 0
        height: 400
        width: 400
        source: "assets/ellipse.png"
    }

    Image {
        id: solar_panel
        x: 152
        y: 68
        source: "assets/solar_panel.png"
    }

    Item {
        id: solar_array_display

        Image {
            id: solar_display
            x: 101
            y: 197
            width: 200
            height: 100
            source: "assets/rectangle.png"
        }

        Text {
            id: solar_input
            x: 119
            y: 220
            font.pixelSize: 16
            text: "Input Power: "
            color: "#ffffff"
            font.weight: Font.Bold
            font.family: "Cherry"
        }

        Text {
            id: input_power
            x: 236
            y: 220
            font.pixelSize: 16
            text: "100"
            color: "#ffffff"
            font.weight: Font.Bold
            font.family: "Cherry"
        }

        Text {
            id: solar_output
            x: 119
            y: 256
            font.pixelSize: 16
            text: "Output Power: "
            color: "#ffffff"
            font.weight: Font.Bold
            font.family: "Cherry"
        }

        Text {
            id: output_power
            x: 247
            y: 256
            font.pixelSize: 16
            text: "100"
            color: "#ffffff"
            font.weight: Font.Bold
            font.family: "Cherry"
        }
    }

}





