import QtQuick
import "../../oma-ui/Ui" as OmaUi

Item {
  id: root

  required property CommandLayer layer
  required property string keyText
  property bool available: true
  property bool placeRight: false
  property bool centerOnCorner: false

  anchors.fill: parent
  visible: layer.hintsVisible
  z: 20

  OmaUi.KeyHintBadge {
    keyText: root.keyText
    available: root.available
    placeRight: root.placeRight
    centerOnCorner: root.centerOnCorner
  }
}
