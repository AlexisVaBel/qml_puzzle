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
           anchors.margins: 30
    }
    Text {
        id: name
        anchors.left: root.bottomLeft
        anchors.leftMargin: 5

        text: qsTr("Step: ")+_gameBoard.internalSteps
    }

}
