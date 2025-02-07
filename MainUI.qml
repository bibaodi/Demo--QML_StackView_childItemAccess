import QtQuick
import QtQuick.Controls

Item {
    id: id_mainui
    anchors.fill: parent

    StackView {
        id: id_stackView
        initialItem: Component {
            Rectangle {
                id: id_a
                width: 200
                height: 200
                color: "lightblue"

                Text {
                    anchors.centerIn: parent
                    text: "Initial Item"
                }

                // Access the StackView object
                Component.onCompleted: {
                    console.log("StackView object:", StackView.view)
                }

                // Push a new item onto the stack
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        console.debug(
                                    "1st way access stackView from child item 'id_a.StackView.view'")
                        id_a.StackView.view.push(Qt.resolvedUrl("NewItem.qml"))
                    }
                }
            }
        }
    }

    Component.onCompleted: {

        //id_stackView.push("NewItem.qml", {
        //                      "prop_stackView": id_stackView
        //                  }) //initial page
        // var component = Qt.createComponent("NewItem.qml")
        // var item = component.createObject(stackView, {
        //                                       "prop_stackView": id_stackView
        //                                   })
        // id_stackView.push(item)
    }
}
