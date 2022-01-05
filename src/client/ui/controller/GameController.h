#pragma once
#include <QObject>

namespace ui::controller {
class GameController : public QObject {
	Q_OBJECT

	Q_PROPERTY(int stepCount READ stepCount CONSTANT)
public:
	explicit GameController(QObject* parent = nullptr);
	int stepCount() const {
		return _stepCount;
	}

	Q_INVOKABLE bool nextStep();

private:
	int _stepCount{0};
};
} // namespace ui::controller
