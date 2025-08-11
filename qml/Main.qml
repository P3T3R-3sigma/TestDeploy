import Felgo
import QtQuick
import QtMultimedia

App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    NavigationStack {

        AppPage {
            title: qsTr("Main Page")
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10

                AppImage {
                    width: 200
                    height: 300
                    source: "qrc:/assets/Images/Yoda.png"
                }

                Rectangle {
                    width: 360
                    height: 240

                    MediaPlayer {
                        id: mediaPlayer
                        source: "qrc:/assets/Videos/SampleVideo_360x240_1mb.mp4"
                        videoOutput: videoOut
                    }

                    VideoOutput {
                        id: videoOut
                        anchors.fill: parent
                    }
                }
            }
        }
    }
    Component.onCompleted:  {
        mediaPlayer.play()
    }
}
