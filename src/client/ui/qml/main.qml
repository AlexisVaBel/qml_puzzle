import QtQuick 2.12
import QtQuick.Window 2.12

import "entity"

Window {
    id: root
    visible: true
    width: 480
    height: 480
    title: qsTr("puzzler")
    GameBoard{
    id: _gameBoard
           anchors.fill: parent
           anchors.margins: 5
    }

}
