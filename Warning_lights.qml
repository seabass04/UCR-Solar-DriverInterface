import QtQuick 2.8
import QtQuick.Layouts 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Extras 1.4

Item {
    id: warning_lights
    width: 1000
    height: 100

    property alias isoIcon3Active: isoIcon3.active

    Image {
        id: warning_lights_background
        height: 100
        width: 1000
        source: "assets/dashboard_background.png"

    }

    RowLayout {
        x: -100
        y: 0
        scale: 0.7
        spacing: 120

        Image {
            id: master_warning
            width: 100
            height: 0
            source: "assets/master_warning.png"

        }

        Image {
            id: econ_mode
            source: "assets/econ_mode.png"
        }

        Image {
            id: passenger
            source: "assets/passenger.png"
        }

        Image {
            id: traction_control
            source: "assets/traction_control.png"
        }

        Image {
            id: tire_pressure
            source: "assets/tire_pressure.png"
        }

        Image {
            id: brake_warning
            source: "assets/brake_warning.png"
        }
    }

    IsoItem {
        id: isoIcon
        x: 71
        y: -163
    }

}
