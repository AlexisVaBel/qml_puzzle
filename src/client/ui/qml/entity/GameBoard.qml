import QtQuick 2.0;
import Game 1.0;
import GameController 1.0;

GridView {
    id: root

    model: GameBoardModel{

    }

    GameController{
        id: _gameController
    }

    property int internalSteps: 0


    cellHeight: height / root.model.dimension
    cellWidth: width / root.model.dimension

    interactive: false

    delegate: Item {
        id: _backgroundDelegate
        width: root.cellWidth
        height: root.cellHeight

        visible: root.model.hiddenElementValue.toString() !== display.toString()

        Tile {
            anchors.fill: _backgroundDelegate
            anchors.margins: 5

            internalText.text: display.toString()

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    root.model.move(index)
                    _gameController.nextStep()
                    root.internalSteps = _gameController.stepCount
                }
            }
        }
    }

//    GameController_qml{
//        id: _gameController
//    }

    Component.onCompleted: {
        //root.model =  _gameController.getModel();
    }
}
