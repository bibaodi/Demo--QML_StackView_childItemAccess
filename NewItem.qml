import QtQuick

Item {
    id: id_newitem
    property string prop_text: "New Item"
    property var prop_stackView

    Rectangle {
        id: id_newitemRect
        width: 200
        height: 200
        color: "lightblue"

        Text {
            anchors.centerIn: parent
            text: prop_text
        }

        // Push a new item onto the stack
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.debug(
                            "1st way not work here.\n 2cd way access stackView from child item 'id_newitem.parent'")
                //id_newitem.StackView.view
                id_newitem.parent.push(Qt.resolvedUrl("NewItem2.qml"), {
                                           "prop_text": "New Item2",
                                           "prop_stackView": prop_stackView
                                       })
                console.debug(
                            "3rd way access stackView from child item 'pass property to child item'")
            }
        }
    }
    // Access the StackView object
    Component.onCompleted: {
        console.debug("new item loaded object: , prop_stackView=",
                      prop_stackView, ",parent=", parent)
        console.debug(",id_newitem.StackView=", id_newitem.StackView)
        console.debug(",id_newitemRect.StackView=", id_newitemRect.StackView)
        if (id_newitem.StackView) {
            console.debug(",id_newitem.StackView.view=",
                          id_newitem.StackView.view)
        }
        prop_stackView = id_newitem.parent
    }
}
