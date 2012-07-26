#include "PreviewMaskWidget.h"
#include "FilterObserver.h"

PreviewMaskWidget::PreviewMaskWidget(QWidget *_parent)
: maskWidget(_parent), previewWidget(&maskWidget), animation(&previewWidget, "geometry")
{
	QPoint showPoint(400, 70);
	previewWidget.setShowCoordinate(showPoint);

	setAnimationParam(showPoint);

	connect(&previewWidget, SIGNAL(showDialog()), &animation, SLOT(start()));
}

PreviewMaskWidget::~PreviewMaskWidget()
{
}

void PreviewMaskWidget::showSong(int _songID)
{
	previewWidget.setSongID(_songID);
	maskWidget.show();
}

void PreviewMaskWidget::setAnimationParam(const QPoint &_showPoint)
{
	animation.setDuration(1000);
	animation.setEasingCurve(QEasingCurve::InOutBack);
	animation.setStartValue(QRect(_showPoint.x(), _showPoint.y(), 0, 0));
	animation.setEndValue(previewWidget.geometry());
}
