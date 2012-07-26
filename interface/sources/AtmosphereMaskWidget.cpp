#include "AtmosphereMaskWidget.h"

AtmosphereMaskWidget::AtmosphereMaskWidget(QWidget *_parent) 
: maskWidget(_parent), atmosphereWidget(&maskWidget), 
animation(&atmosphereWidget, "geometry")
{
	QPoint showPoint(50, 30);
	atmosphereWidget.setShowCoordinate(showPoint);

	setAnimationParam(showPoint);

	connect(&atmosphereWidget, SIGNAL(showDialog()), &animation, SLOT(start()));
}

AtmosphereMaskWidget::~AtmosphereMaskWidget(void)
{
}

void AtmosphereMaskWidget::show()
{
	maskWidget.show();
}

void AtmosphereMaskWidget::setAnimationParam(const QPoint &_showPoint)
{
	animation.setDuration(1000);
	animation.setEasingCurve(QEasingCurve::InOutBack);
	animation.setStartValue(QRect(_showPoint.x(), _showPoint.y(), 0, 0));
	animation.setEndValue(atmosphereWidget.geometry());
}
