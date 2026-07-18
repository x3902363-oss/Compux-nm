import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation {
    id: presentation

    Timer {
        interval: 20000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }

    Slide {
        Image {
            id: background1
            source: "slideshow-1.jpg"
            width: parent.width
            height: parent.height
            fillMode: Image.PreserveAspectCrop
        }
        Text {
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 60
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#ffffff"
            font.pixelSize: 22
            text: "COMPUX o'rnatilmoqda..."
        }
    }
}
