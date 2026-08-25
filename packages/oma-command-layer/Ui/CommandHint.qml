import "../../oma-ui/Ui" as OmaUi

OmaUi.KeyHintBadge {
  required property CommandLayer layer
  visible: layer.hintsVisible
}
