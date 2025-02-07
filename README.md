# QML(QT6):Demo for child access stackView from child item in 3 methods;
- author: eton;
- date: 250207

### Three methods
1. childObj..StackView.view
```qml
id_a.StackView.view.push(Qt.resolvedUrl("NewItem.qml"))
```

2. childObj.parent

```qml
id_newitem.parent.push(Qt.resolvedUrl("NewItem2.qml"), {
                                           "prop_text": "New Item2",
                                           "prop_stackView": prop_stackView
                                       })
```

3. pass property to child item

```qml
id_stackView.push("NewItem.qml", {"prop_stackView": id_stackView })
```
