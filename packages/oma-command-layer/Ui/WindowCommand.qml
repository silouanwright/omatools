import QtQuick

Shortcut {
  id: root

  required property CommandLayer layer
  property bool available: true

  signal invoked()

  context: Qt.WindowShortcut
  enabled: layer.acceptingCommands && available
  onActivated: invoked()
}
