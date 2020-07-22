import QtQuick 2.15
import QtQuick.Window 2.15



Rectangle {
    id: background
    visible: true
    width: 640
    height: 320
    color: "#222"

    Rectangle {
        id: roundRect
        width: 0.2*background.width
        height: 0.2*background.height
        radius: 30
        color: "#6F81A5"
        anchors{
            horizontalCenter:background.horizontalCenter
            top: background.top
            topMargin: -0.5*height
        }

        Text {
            id: time
            text: qsTr("10:10 AM")
            font.bold: true
            font.pointSize: 12
            color:"white"
            horizontalAlignment: Text.AlignHCenter
            anchors{
                horizontalCenter: roundRect.horizontalCenter
                bottom: roundRect.bottom
                bottomMargin:0.2*roundRect.height
            }
        }

        Image {
            source: "images/2lines.png"
            anchors{
                top: time.bottom
                horizontalCenter: time.horizontalCenter
            }
        }
    }

    Image {
        id:bluetooth
        source: "images/bt.png"
        anchors{
            right: background.right
            rightMargin: background.width*0.02
            top: background.top
            topMargin: background.width*0.01
        }
    }

    Image {
        id:signal
        source: "images/signal.png"
        anchors{
            right: bluetooth.left
            rightMargin: background.width*0.02
            top: background.top
            topMargin: background.width*0.01
        }
    }

    Image {
        id:battery
        source: "images/battery.png"
        anchors{
            right: signal.left
            rightMargin: background.width*0.02
            top: background.top
            topMargin: background.width*0.01
        }
    }

    Rectangle{
        id:redrect
        width: background.width*0.37
        height: background.height*0.85
        //y: background.height*0.1 //perchè non mi prende il .bottom
        anchors{
            bottom: background.bottom
            leftMargin: background.width*0.01
            bottomMargin: background.width*0.01
            left: background.left
        }
        color:"#ff4816"
        radius:15

        Text {
            text: qsTr("FM 3")
            font.bold: true
            color:"white"
            font.pointSize: 12
            anchors{
                left: redrect.left
                leftMargin:0.02*redrect.width
                top: redrect.top
                topMargin: 0.01*redrect.height
            }
        }

        Text{
            id:freq
            text:qsTr("87.5")
            color:"white"
            font.bold: true
            font.pointSize: 20
            anchors{
                left: redrect.left
                leftMargin:0.35*redrect.width
                top: redrect.top
                topMargin: 0.3*redrect.height
            }
        }

        Text{
            text:qsTr("MHz")
            color:"white"
            font.bold: true
            font.pointSize: 12
            anchors{
                left: freq.right
                leftMargin: 0.1*redrect.width
                top: redrect.top
                topMargin: 0.33*redrect.height
            }
        }

        Image {
            id: skiptostart
            source: "images/skiptostart.png"
            anchors{
                left: redrect.left
                leftMargin: 0.20*redrect.width
                top: redrect.top
                topMargin: 0.55*redrect.height
            }
        }

        Image {
            id: skiptoend
            source: "images/skiptoend.png"
            anchors {
                right: redrect.right
                rightMargin: 0.20*redrect.width
                top: redrect.top
                topMargin: 0.55*redrect.height
            }
        }
    }
    Image {
        id: hamburger
        source: "images/hamburger.png"
        z:1
        anchors {
            horizontalCenter: redrect.horizontalCenter
            bottom: redrect.bottom
        }
    }

    Rectangle {
        id:bluerect
        radius:15
        width: background.width*0.19
        height: background.height*0.3
        anchors {
            bottom: background.bottom
            leftMargin: background.width*0.01
            bottomMargin: background.width*0.01
            left: redrect.right
        }
        gradient: Gradient {
            GradientStop{
                position: 0.0
                color:"lightblue"
            }
            GradientStop{
                position: 1.0
                color:"blue"
            }
        }

        Image {
            source: "images/icons8-bluetooth-2-20.png"
            anchors {
                left: bluerect.left
                leftMargin:0.05*bluerect.width
                top: bluerect.top
                topMargin: 0.05*bluerect.height
            }
        }

        Image {
            source: "images/icons8-s-symbol-48.png"
            anchors {
                horizontalCenter: bluerect.horizontalCenter
                top: bluerect.top
                topMargin: 0.15*bluerect.height
            }
        }

    }

    Text {
        text: qsTr("Studio")
        color: "white"
        font.bold:true
        font.pointSize: 10
        z:1
        anchors {
            bottom: bluerect.bottom
            bottomMargin: dotsbar.height*0.35
            //verticalCenter: blackbar.verticalCenter perche non va? non è fratello o genitore
            horizontalCenter: bluerect.horizontalCenter
        }
    }

    Rectangle {
        id:greenrect
        radius:15
        width: background.width*0.19
        height: background.height*0.3
        anchors {
            bottom: background.bottom
            leftMargin: background.width*0.01
            bottomMargin: background.width*0.01
            left: bluerect.right
        }
        gradient: Gradient {
            GradientStop{
                position: 0.0
                color:"#C5E8B7"
            }
            GradientStop{
                position: 1.0
                color:"#228B22"
            }
        }

        Image {
            source: "images/icons8-phone-48.png"
            anchors {
                horizontalCenter: greenrect.horizontalCenter
                top: greenrect.top
                topMargin: 0.15*greenrect.height
            }
        }

    }
    Text
    {
        text: qsTr("Phone")
        color: "white"
        font.bold:true
        font.pointSize: 10
        z:1
        anchors {
            bottom: greenrect.bottom
            bottomMargin: dotsbar.height*0.35
            horizontalCenter: greenrect.horizontalCenter
        }
    }

    Rectangle {
        id:orangerect
        radius:15
        width: background.width*0.19
        height: background.height*0.3
        anchors {
            bottom: background.bottom
            leftMargin: background.width*0.01
            bottomMargin: background.width*0.01
            left: greenrect.right
        }
        gradient: Gradient {
            GradientStop{
                position: 0.0
                color:"yellow"
            }
            GradientStop{
                position: 1.0
                color:"#FF4500"
            }
        }

        Image
        {
            source: "images/icons8-bluetooth-2-48.png"
            anchors {
                horizontalCenter: orangerect.horizontalCenter
                top: orangerect.top
                topMargin: 0.15*orangerect.height
            }
        }
    }
    Text {
        text: qsTr("Bluetooth")
        color: "white"
        font.bold:true
        font.pointSize: 10
        z:1
        anchors {
            bottom: orangerect.bottom
            bottomMargin: dotsbar.height*0.35
            horizontalCenter: orangerect.horizontalCenter
        }

    }

    Rectangle {
        id:clockrect
        radius:15
        height: background.height-(background.height*0.17)-bluerect.height
        anchors {
            left:redrect.right
            leftMargin: background.width*0.01
            right:background.right
            rightMargin: background.width*0.02
            bottom : bluerect.top
            bottomMargin: background.width*0.01
        }
        gradient: Gradient {
            GradientStop{
                position: 0.0
                color:"#6F81A5"
            }
            GradientStop{
                position: 1.0
                color:"#3F4354"
            }
        }



        Rectangle {
            id: clock
            color: "transparent"
            width: clockrect.width*0.3
            height: clockrect.height*0.8
            anchors
            {
                left: clockrect.left
                leftMargin: 0.01*clockrect.width
                top: clockrect.top
                topMargin: clockrect.heigh*0.05
            }

            Item {
                property int _minSide: Math.min(clock.width,clock.height)
                x: 10 + (clock.width - _minSide)/2
                y: 10 + (clock.height - _minSide)/2
                width: _minSide - 20
                height: _minSide - 20

                scale: Math.min(width / sfondo.sourceSize.width,
                                height / sfondo.sourceSize.height)
                transformOrigin: Item.TopLeft

                Image {
                    id: sfondo
                    source: "images/background.png"
                }

                Image {
                    id: smallArm
                    source: "images/smallArm.png"
                    x: sfondo.width/2 - width/2
                    y: sfondo.height/2 - 914

                    transform: Rotation {
                        origin.x: smallArm.width/2
                        origin.y: 914

                        RotationAnimation on angle {
                            from:0
                            to: 360*2
                            duration: 60000
                            loops: Animation.Infinite
                        }
                    }
                }

                Image {
                    id: largeArm
                    source: "images/largeArm.png"
                    x: sfondo.width/2 - width/2
                    y: sfondo.height/2 - 1255

                    transform: Rotation {
                        origin.x: largeArm.width/2
                        origin.y: 1255
                        angle: 90 // Likely a calculation from other properties

                        RotationAnimation on angle {
                            from:0
                            to: 360*24 // 24 hours in a day
                            duration: 60000 // run through a complete day in one minute.
                            loops: Animation.Infinite
                        }
                    }
                }
            }
        }

        Text {
            id: day
            text: qsTr("Wednesday")
            color:"white"
            font.bold:true
            font.pointSize: 18
            anchors {
                top: clockrect.top
                topMargin: 0.25*clockrect.height
                left: clockrect.left
                leftMargin: 0.45*clockrect.width
            }
        }

        Text {
            text: qsTr("23 January 2019")
            color:"white"
            font.bold:true
            font.pointSize: 12
            anchors {
                top: day.bottom
                topMargin: 0.05*clockrect.height
                left: clockrect.left
                leftMargin: 0.45*clockrect.width
            }
        }

        Image {
            source: "images/icons8-rainfall-24.png"
            anchors {
                top: clockrect.top
                topMargin:0.02*clockrect.height
                right: clockrect.right
                rightMargin:0.01*clockrect.width

            }
        }

        Rectangle {
            id: dotsbar
            width: clockrect.width
            height: clockrect.height*0.2
            anchors {
                bottom: clockrect.bottom
            }
            color:"black"
            opacity: background.opacity*0.2
        }

        Rectangle {
            id: dot1
            width:dotsbar.width*0.02
            height: dotsbar.width*0.02
            radius:50
            color: "white"
            anchors {
                horizontalCenter: dotsbar.horizontalCenter
                verticalCenter: dotsbar.verticalCenter
            }
        }

        Rectangle {
            width:dotsbar.width*0.016
            height: dotsbar.width*0.016
            radius:50
            color: "white"
            anchors {
                left: dot1.right
                leftMargin: dotsbar.width*0.01
                verticalCenter: dotsbar.verticalCenter
            }
        }
    }

    Rectangle {
        id: blackbar
        width: background.width
        height: background.height*0.13
        anchors {
            bottom: background.bottom
        }
        color:"black"
        opacity: background.opacity*0.3
    }

}
