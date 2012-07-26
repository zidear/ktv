#include "TuningMaskWidget.h"

TuningMaskWidget::TuningMaskWidget(QWidget *_parent) 
: maskWidget(_parent), tuningWidget(&maskWidget), animation(&tuningWidget, "geometry")
{
	QPoint showPoint(300, 300);
	tuningWidget.setShowCoordinate(showPoint);

	setAnimationParam(showPoint);

	connect(&tuningWidget, SIGNAL(showDialog()), &animation, SLOT(start()));
}

TuningMaskWidget::~TuningMaskWidget(void)
{
}

void TuningMaskWidget::show()
{
	maskWidget.show();
}

void TuningMaskWidget::setAnimationParam(const QPoint &_showPoint)
{
	animation.setDuration(1000);
	animation.setEasingCurve(QEasingCurve::InOutBack);
	animation.setStartValue(QRect(_showPoint.x(), _showPoint.y(), 0, 0));
	animation.setEndValue(tuningWidget.geometry());
}
