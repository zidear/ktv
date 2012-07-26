#include "ServiceMaskWidget.h"

ServiceMaskWidget::ServiceMaskWidget(QWidget *_parent) 
: maskWidget(_parent), serviceWidget(&maskWidget), 
animation(&serviceWidget, "geometry")
{
	QPoint showPoint(50, 30);
	serviceWidget.setShowCoordinate(showPoint);

	setAnimationParam(showPoint);

	connect(&serviceWidget, SIGNAL(showDialog()), &animation, SLOT(start()));
}

ServiceMaskWidget::~ServiceMaskWidget(void)
{
}

void ServiceMaskWidget::show()
{
	maskWidget.show();
}

void ServiceMaskWidget::setAnimationParam(const QPoint &_showPoint)
{
	animation.setDuration(1000);
	animation.setEasingCurve(QEasingCurve::InOutBack);
	animation.setStartValue(QRect(_showPoint.x(), _showPoint.y(), 0, 0));
	animation.setEndValue(serviceWidget.geometry());
}


