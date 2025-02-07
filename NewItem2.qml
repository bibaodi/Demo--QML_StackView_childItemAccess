import QtQuick

Item {
    id: id_newitem2
    property string prop_text: "item2default"
    property var prop_stackView
    Rectangle {

        width: 200
        height: 200
        color: "lightblue"

        Text {
            anchors.centerIn: parent
            text: prop_text
        }

        // Access the StackView object
        Component.onCompleted: {
            console.log("new item2 loaded object: , prop_stackView=",
                        prop_stackView)
        }

        // Push a new item onto the stack
        MouseArea {
            anchors.fill: parent
            onClicked: {
                // id_newitem2.StackView.view.replace(Qt.resolvedUrl(
                //                                       "NewItem.qml"), {
                //                                       "prop_text": "New Item"
                //                                   })
                // id_newitem2.prop_stackView.replace(Qt.resolvedUrl(
                //                                        "NewItem.qml"), {
                //                                        "prop_text": "New Item",
                //                                        "prop_stackView": prop_stackView
                //                                    })
                id_newitem2.prop_stackView.pop()
            }
        }
    }
}
