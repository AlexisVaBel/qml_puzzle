#include "GameController.h"
#include <QDebug>

using namespace ui::controller;

GameController::GameController(QObject* parent)
	: QObject(parent) {
}


bool GameController::nextStep() {
	++_stepCount;
	qDebug() << "__step__" << _stepCount;
}
